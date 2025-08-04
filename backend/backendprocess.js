const express = require("express");
const bodyParser = require("body-parser");
const morgan = require("morgan");
const cors = require("cors");
const { connectToDatabase } = require("./db.js");

const app = express();

app.use(cors());
app.use(express.json());
app.use(morgan("dev"));

// const movies = [
//   {
//     id: 1,
//     title: "Django Unchained",
//     rating: 8.5,
//     year: 2012,
//     genres: [
//       "Dark Comedy",
//       "Epic",
//       "Period Drama",
//       "Western Epic",
//       "Comedy",
//       "Drama",
//       "Western",
//     ],
//     director: "Quentin Tarantino",
//     actors: ["Jamie Foxx", "Christoph Waltz", "Leonardo DiCaprio"],
//     trailer: "https://www.youtube.com/embed/0RjoVdtE2nk",
//     shortDescription:
//       "In 1858, a bounty-hunter named King Schultz seeks out a slave named Django and buys him because he needs him to find some men he is looking for. ...",
//     poster:
//       "http://www.newdvdreleasedates.com/images/posters/large/django-unchained-2012-05.jpg",
//   },
//   {
//     id: 2,
//     title: "Schindler's List",
//     rating: 9.0,
//     year: 1993,
//     genres: ["Biography", "Drama", "History", "War"],
//     director: "Steven Spielberg",
//     actors: ["Liam Neeson", "Ben Kingsley", "Ralph Fiennes"],
//     trailer: "https://www.youtube.com/embed/DxcSg6bL2Vg",
//     shortDescription:
//       "Oskar Schindler, a German industrialist and member of the Nazi party, tries to save his Jewish employees after witnessing the persecution of Jews...",
//     poster:
//       "https://image.tmdb.org/t/p/original/m0pV0fmMERzCvPVQbLLrPPLl5q1.jpg",
//   },
//   {
//     id: 3,
//     title: "Fight Club",
//     rating: 8.8,
//     year: 1999,
//     genres: ["Drama", "Psychological Thriller"],
//     director: "David Fincher",
//     actors: ["Brad Pitt", "Edward Norton", "Helena Bonham Carter"],
//     trailer: "https://www.youtube.com/embed/QW9wNFpLYiY",
//     shortDescription:
//       "An insomniac office worker and a devil-may-care soapmaker form an underground fight club that evolves into something much more...",
//     poster:
//       "https://image.tmdb.org/t/p/original/8dR7Jd7DOEhU8cZ734Va17NRoZ2.jpg",
//   },
//   {
//     id: 4,
//     title: "Scarface",
//     rating: 8.3,
//     year: 1983,
//     genres: ["Crime", "Drama", "Thriller"],
//     director: "Brian De Palma",
//     actors: ["Al Pacino", "Michelle Pfeiffer", "Steven Bauer"],
//     trailer: "https://www.youtube.com/embed/lU3EHVMkizc",
//     shortDescription:
//       "In 1980 Miami, a determined Cuban immigrant takes over a drug cartel and succumbs to greed.",
//     poster:
//       "https://www.wallpapersun.com/wp-content/uploads/2023/05/Scarface-Wallpapersun-uighf.jpg",
//   },
//   {
//     id: 5,
//     title: "Saving Private Ryan",
//     rating: 8.6,
//     year: 1998,
//     genres: ["Drama", "War"],
//     director: "Steven Spielberg",
//     actors: ["Tom Hanks", "Matt Damon", "Tom Sizemore"],
//     trailer: "https://www.youtube.com/embed/ved8259bfBI",
//     shortDescription:
//       "Following the Normandy Landings, a group of U.S. soldiers go behind enemy lines to retrieve a paratrooper...",
//     poster:
//       "https://posterspy.com/wp-content/uploads/2019/10/Saving_private_ryan_poster_NEW.jpg",
//   },
//   {
//     id: 6,
//     title: "Back to the Future",
//     rating: 8.5,
//     year: 1985,
//     genres: [
//       "High-Concept Comedy",
//       "Teen Adventure",
//       "Time Travel",
//       "Urban Adventure",
//       "Adventure",
//       "Comedy",
//       "Sci-Fi",
//     ],
//     director: "Robert Zemeckis",
//     actors: [
//       "Michael J. Fox",
//       "Christopher Lloyd",
//       "Crispin Glover",
//       "Lea Thompson",
//       "Claudia Wells",
//       "Thomas F. Wilson",
//     ],
//     trailer: "https://www.youtube.com/watch?v=qvsgGtivCgs",
//     shortDescription:
//       "'Back to the Future' is a classic 1985 science fiction film where teenager Marty McFly is accidentally sent back in time from 1985 to 1955 in a time-traveling DeLorean. To return to his own time, he must ensure his parents fall in love, all while avoiding inadvertently erasing himself from existence. ",
//     poster:
//       "https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p11991_p_v8_ap.jpg",
//   },
// ];

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

app.get("/api/movies/:id", (req, res) => {
  const idFromUrl = parseInt(req.params.id);
  if (isNaN(idFromUrl)) {
    return res.status(400).json({ message: "ID nicht im korrekten Format" });
  }
  const movie = movies.find((m) => m.id === idFromUrl);
  if (movie === undefined) {
    return res
      .status(404)
      .json({ message: "ID nicht existent. Bitte gib eine vorhandene ein." });
  }
  res.status(200).json(movie);
});

app.listen(3000, () => {
  console.log("Server läuft auf http://localhost:3000");
});
