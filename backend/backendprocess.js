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

app.get("/api/movies/user", authenticateToken, async (req, res) => {
  try {
    const connection = await connectToDatabase();
    const [rows] = await connection.execute(
      `SELECT
          m.movie_id,
          m.title,
          m.release_year,
          m.director,
          m.short_description,
          m.trailer_url,
          m.poster,
          m.rating,
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

app.get("/api/actors", async (req, res)=>{
  try {
    const connection = await connectToDatabase();
    const [rows] = await connection.execute('SELECT * FROM actors ORDER BY actor_name;')
    await connection.end();
    res.status(200).json(rows);
  } catch (error) {
    res.status(500).json({error: "Fehler beim Laden der Schauspieler"});
  }
})

app.post("/api/admin/addmovie", async (req, res) => {
  try {
    //destructuring des Request Body
    const { title, release_year, director,
        short_description, trailer_url,
        poster, rating, genres, actors }
        = req.body;

    //Datenbank Verbindung aufbauen
    const connection = await connectToDatabase();

    //Prüfen ob schon ein Film mit dem Titel vorhanden ist, falls ja Abbruch
    const [checkMovieTitle] = await connection.execute('SELECT * FROM movies WHERE title = ?', [title])
    if (checkMovieTitle.length > 0) {
      return res.send(400).json({error: "Film mit diesem Namen existiert bereits"});
    }
    //Query fürs einfügen des Films wird vorbereitet
    const movieQuery = `INSERT INTO movies 
              (title, release_year, director, short_description, trailer_url, poster, rating)
              VALUES
              (?, ?, ?, ?, ?, ?, ?)`
    //Array mit den Werten die eingefügt werden wird vorbereitet
    const movieData = [title, release_year, director, short_description, trailer_url, poster, rating];
    //Query ausführen
    const [addedMovie] = await connection.execute(movieQuery, movieData);
    //Die ID mit der der neue Film hinzugefügt wurde zwischenspeichern
    const addedMovieId = addedMovie.insertId;

    //Generiere Dynamische Querys für Genres und Actors (da beliebig viele Genres und Actors pro Film eingetragen werden können)
    const selectedGenresQuery = generateGenresSearchQuery(genres);
    const selectedActorsQuery = generateActorSearchQuery(actors);

    //Führe die Querys aus um die IDs zu den jeweiligen Genres zu erhalten um sie für die Kreuztabellen weiterzuverwenden
    const [selectedGenres] = await connection.execute(selectedGenresQuery, genres);
    const [selectedActors] = await connection.execute(selectedActorsQuery, actors)

    //Generiere Dynamische Querys um Genres und Actors in die Kreuztabellen einzufügen
    const [genreRelationQuery, genreRelationData] = generateGenreRelationQuery(selectedGenres, addedMovieId);
    const [actorRelationQuery, actorRelationData] = generateActorRelationQuery(selectedActors, addedMovieId);
    
    //Führe die Querys aus um die Genre-Film-Beziehung einzutragen
    const [addedGenreRelation] = await connection.execute(genreRelationQuery, genreRelationData);
    const [addedActorRelation] = await connection.execute(actorRelationQuery, actorRelationData)
    res.status(200).json({message: "ok"})


  } catch (error) {
    console.error(error);
  }
})

function generateActorRelationQuery(actors, movieId) {
  let actorRelationQuery = "INSERT INTO movies_with_actors (movie_id, actor_id) VALUES "
  let actorRelationData = [];
  //für jeden übermittelten Actor wird (?, ?) an die Query angehängt und im Array die movieId und die actor_id abgespeichert
  actors.forEach(actor => {
    actorRelationQuery += `(?, ?),`
    actorRelationData.push(movieId, actor.actor_id)
  })
  //slice schneidet ganz hinten das letzte Komma ab, da sonst die SQL Syntax nichtmehr sauber ist
  actorRelationQuery = actorRelationQuery.slice(0, -1);
  console.log("Actor Relation Query:", actorRelationQuery);
  console.log("Actor Relation Data:", actorRelationData);
  //ReturnValues als Array, diese werden in der Route destructured
  return [actorRelationQuery, actorRelationData]
}

function generateActorSearchQuery(actors) {
  //legt den Anfang der Query fest, die Query gibt alle Actors mit ihren IDs zurück, die denen entsprechen die ans Backend geschickt wurden
  let selectedActorsQuery = 'SELECT actor_id, actor_name FROM actors WHERE actor_name IN('
  //für jeden Actor im Array (das aus dem Request Body kommt) wird ein ?, an die Query konkateniert
  actors.forEach(actor => {
    selectedActorsQuery += "?,"
  })
  //letztes Komma wird weggesliced
  selectedActorsQuery = selectedActorsQuery.slice(0, -1);
  //Query wird mit der Klammer geschlossen für korrekte Syntax
  selectedActorsQuery += ");"
  console.log("Actor Search Query:", selectedActorsQuery);
  return selectedActorsQuery;
}

function generateGenreRelationQuery(genres, movieId) {
  let genreRelationQuery = "INSERT INTO movies_with_genres (movie_id, genre_id) VALUES "
  let genreRelationData = [];
  genres.forEach(genre => {
    genreRelationQuery += `(?, ?),`
    genreRelationData.push(movieId, genre.genre_id)
  })
  genreRelationQuery = genreRelationQuery.slice(0, -1);
  console.log("Genre Relation Query:", genreRelationQuery);
  console.log("Genre Relation Data:", genreRelationData);
  return [genreRelationQuery, genreRelationData]
}

function generateGenresSearchQuery(genres) {
  let selectedGenresQuery = 'SELECT genre_id, genre_name FROM genres WHERE genre_name IN('
  genres.forEach(genre => {
    selectedGenresQuery += "?,"
  })
  selectedGenresQuery = selectedGenresQuery.slice(0, -1);
  selectedGenresQuery += ");"
  console.log("Genre Search Query:", selectedGenresQuery);
  return selectedGenresQuery;
}

app.listen(3000, () => {
  console.log("Server läuft auf http://localhost:3000");
});
