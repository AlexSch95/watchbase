const express = require("express");
const bodyParser = require("body-parser");
const morgan = require("morgan");
const cors = require("cors");
const { connectToDatabase } = require("./db.js");
const bcrypt = require("bcrypt");
require('dotenv').config()
const jwt=require("jsonwebtoken")

const app = express();

app.use(cors());
app.use(express.json());
app.use(morgan("dev"));

const secretKey = process.env.JWT_SECRET

app.get("/api/movies", async (req, res) => {
  try {
    const connection = await connectToDatabase();

    const [rows] = await connection.execute(`
        SELECT
            m.movie_id AS id,
            m.title,
            m.release_year AS year,
            m.director,
            m.rating,
            m.short_description AS shortDescription,
            m.poster,
            m.trailer_url AS trailer,
            GROUP_CONCAT(DISTINCT g.genre_name SEPARATOR ', ') AS genres,
            GROUP_CONCAT(DISTINCT a.actor_name SEPARATOR ', ') AS actors
        FROM
            movies m
        LEFT JOIN movies_with_genres mg ON m.movie_id = mg.movie_id
        LEFT JOIN genres g ON mg.genre_id = g.genre_id
        LEFT JOIN movies_with_actors ma ON m.movie_id = ma.movie_id
        LEFT JOIN actors a ON ma.actor_id = a.actor_id
        GROUP BY
            m.movie_id, m.title, m.release_year, m.director;
      `);
      await connection.end();
      res.status(200).json(rows);
  } catch (error) {
    res.status(500).json({error: "Fehler beim Laden der Filme"});

  }
});

app.get("/api/genres", async (req, res)=>{
  try {
    const connection = await connectToDatabase();
    const [rows] = await connection.execute('SELECT * FROM genres ORDER BY genre_name;')
    await connection.end();
    res.status(200).json(rows);
  } catch (error) {
    res.status(500).json({error: "Fehler beim Laden der Genres"});
  }
})

app.post("/api/users/login", async (req, res) => {
  try {
    // Username und Passwort auslesen
    const {username, password} = req.body;
    if (username === undefined || password === undefined) {
      return res.status(400).json({ error: "Username oder Passwort nicht übergeben." });
    }
    const connection = await connectToDatabase();
    // Überprüfe, ob Username existiert
    const [existingUsers] = await connection.execute(
      'SELECT * FROM users WHERE user_name = ?', [username]
    );
    await connection.end();
    if (existingUsers.length === 0) {
        return res.status(404).json({ error: "Username existiert nicht." });
    }
    // existingUsers = [user0, user1, ...]
    const user = existingUsers[0];
    const passwordHash = user.password_hash;
    // Ab hier: Passwort-Hash überprüfen
    const passwordCorrect = await bcrypt.compare(password, passwordHash);
    if (passwordCorrect === false) {
      return res.status(401).json({error: "Passwort nicht korrekt."});
    }
    // Objekt erstellen, das in unserem token mit jsonwebtoken gesigned wird
    const tokenUser = {
      id: user.user_id,
      username: user.user_name
    }
    //erstellen des verschlüsselten Tokens mit jwt.sign
    const token = jwt.sign(tokenUser, secretKey, { expiresIn: '1h' });
    //antwort ans frontend inklusive des erstellten, verschlüsselten tokens
    console.log(token);
    res.status(200).json({
      message: `User ${username} erfolgreich eingeloggt.`,
      token: token,
      userId: user.user_id
    })

  } catch (error) {
    return res.status(500).json({ error: "Fehler beim überprüfen des Passworts." });
  }
});

app.post("/api/users/register", async (req, res) => {
  try {
    // Username und Passwort auslesen
    const {username, password} = req.body;
    if (username === undefined || password === undefined) {
      return res.status(400).json({ error: "Username oder Passwort nicht übergeben." });
    }
    const connection = await connectToDatabase();
    // Überprüfe, ob Username schon vergeben
    const [existingUsers] = await connection.execute(
      'SELECT * FROM users WHERE user_name = ?', [username]
    );
    if (existingUsers.length > 0) {
        return res.status(500).json({ error: "Username existiert schon." });
    }
    // Ab hier: User erstellen
    const saltRounds = 10;
    const hashedPassword = await bcrypt.hash(password, saltRounds);
    const [newUser] = await connection.execute(
      'INSERT INTO users (user_name, password_hash) VALUES (?, ?)', [username, hashedPassword]
    );
    await connection.end();
    res.status(201).json({message: `User ${username} erfolgreich erstellt.`})
  } catch (error) {
    return res.status(500).json({ error: "Fehler beim Erstellen des Users." });
  }
});

function authenticateToken(req, res, next) {
  const authHeader = req.headers["authorization"];
  if (!authHeader){
    return res.status(401).json({ error: "Kein Token" });
  }
  const token = authHeader.split(" ")[1];

  try {
    const decoded = jwt.verify(token, secretKey);
    req.user = decoded.username;
    req.id = decoded.id;
    next();
  } catch (error) {
    console.error(error);
    res.sendStatus(500);
  }
}

app.get("/api/user", authenticateToken, async (req, res) => {
  res.send(200).json({message: `User ${req.user} ist eingeloggt.`})
})

app.get("/api/movies/user", authenticateToken, async (req, res) => {
  try {
    const connection = await connectToDatabase();
    const [rows] = await connection.execute(
      `SELECT
          m.movie_id AS id,
          m.title,
          m.release_year AS year,
          m.director,
          m.rating,
          m.short_description AS shortDescription,
          m.poster,
          m.trailer_url AS trailer,
          um.watched_status,
          GROUP_CONCAT(DISTINCT g.genre_name SEPARATOR ', ') AS genres,
          GROUP_CONCAT(DISTINCT a.actor_name SEPARATOR ', ') AS actors
      FROM
          user_movies um
      JOIN movies m ON um.movie_id = m.movie_id
      LEFT JOIN movies_with_genres mg ON m.movie_id = mg.movie_id
      LEFT JOIN genres g ON mg.genre_id = g.genre_id
      LEFT JOIN movies_with_actors ma ON m.movie_id = ma.movie_id
      LEFT JOIN actors a ON ma.actor_id = a.actor_id
      WHERE
          um.user_id = ?
      GROUP BY
          m.movie_id, m.title, m.release_year, m.director, m.short_description,
          m.trailer_url, m.poster, m.rating, um.watched_status;`,
      [req.id]
    );
      await connection.end();
      res.status(200).json(rows);
  } catch (error) {
    res.status(500).json({error: "Fehler beim Laden der Filme"});

  }
});

app.get("/api/movies/user/all", authenticateToken, async (req, res) => {
  try {
    const connection = await connectToDatabase();
    const [rows] = await connection.execute(
      `SELECT am.*, um.user_id, um.watched_status FROM (
        SELECT
          m.movie_id AS id,
          m.title,
          m.release_year AS year,
          m.director,
          m.rating,
          m.short_description AS shortDescription,
          m.poster,
          m.trailer_url AS trailer,
          -- um.watched_status,
          GROUP_CONCAT(DISTINCT g.genre_name SEPARATOR ', ') AS genres,
          GROUP_CONCAT(DISTINCT a.actor_name SEPARATOR ', ') AS actors
        FROM movies m
        LEFT JOIN movies_with_genres mg ON m.movie_id = mg.movie_id
        LEFT JOIN genres g ON mg.genre_id = g.genre_id
        LEFT JOIN movies_with_actors ma ON m.movie_id = ma.movie_id
        LEFT JOIN actors a ON ma.actor_id = a.actor_id
        GROUP BY
          m.movie_id, m.title, m.release_year, m.director, m.short_description,
          m.trailer_url, m.poster, m.rating
      ) am
      LEFT OUTER JOIN (
        SELECT * FROM user_movies um
        WHERE user_id = ?
      ) um ON um.movie_id = am.id;
      `,
      [req.id]
    );
    await connection.end();
    res.status(200).json(rows);
  } catch (error) {
    res.status(500).json({ error: "Fehler beim Laden der Filme" });
  }
});

app.post("/api/movies/user/add", authenticateToken, async (req, res) => {
  try {
    const {movie_id, watched_status} = req.body;
    if (movie_id === undefined || watched_status === undefined) {
      return res.status(400).json({error: "Unvollständige Daten übergeben"})
    }
    const connection = await connectToDatabase();
    const [isExisting] = await connection.execute("SELECT * FROM user_movies WHERE user_id = ? and movie_id = ?", [req.id, movie_id])
    if (isExisting.length > 0) {
      if (isExisting[0].watched_status !== watched_status) {
        const [switchStatus] = await connection.execute("UPDATE user_movies SET watched_status = ? WHERE user_id = ? AND movie_id = ?", [watched_status, req.id, movie_id])
        return res.status(200).json({message: "Watched-Status des Films wurde angepasst"})
      }
      return res.status(400).json({error: "Film ist bereits auf der Watchlist mit dem selben Status", movie_id: movie_id})
    }
    const [result] = await connection.execute("INSERT INTO user_movies (user_id, movie_id, watched_status) VALUES (?, ?, ?)", [req.id, movie_id, watched_status]);
    await connection.end();
    res.status(201).json({message: "Film erfolgreich zur Watchlist hinzugefügt"})
  } catch (error) {
    res.status(500).json({error: "Fehler beim hinzufügen zur Watchlist"});
  }
})

app.delete("/api/movies/user/delete", authenticateToken, async (req, res) => {
  try {
    const {movie_id} = req.body;
    if (movie_id === undefined) {
      return res.status(400).json({error: "Unvollständige Daten übergeben"})
    }
    const connection = await connectToDatabase();
    const [isExisting] = await connection.execute("SELECT * FROM user_movies WHERE user_id = ? and movie_id = ?", [req.id, movie_id])
    if (isExisting.length === 0) {
      return res.status(404).json({error: "Watchlist Eintrag nicht gefunden"})
    }
    const [result] = await connection.execute("DELETE FROM user_movies WHERE movie_id = ? AND user_id = ?", [movie_id, req.id])
    await connection.end();
    res.status(200).json({message: "Watchlist Eintrag erfolgreich gelöscht"})
  } catch (error) {
    res.status(500).json({error: "Fehler beim hinzufügen zur Watchlist"});
  }
})


app.listen(3000, () => {
  console.log("Server läuft auf http://localhost:3000");
});
