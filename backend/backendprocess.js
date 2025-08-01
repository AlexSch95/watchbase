const express = require("express");
const bodyParser = require("body-parser");
const morgan = require("morgan");
const cors = require("cors");

const app = express();

app.use(cors());
app.use(express.json());
app.use(morgan("dev"));

const movies = [
    {id: 1, title: "Django Unchained", rating: 8.5, year: 2012, genres: ["Dark Comedy","Epic","Period Drama","Western Epic","Comedy","Drama","Western"], director: "Quentin Tarantino", actors: ["Jamie Foxx", "Christoph Waltz", "Leonardo DiCaprio"], trailer: "https://www.youtube.com/watch?v=0RjoVdtE2nk", shortDescription: "In 1858, a bounty-hunter named King Schultz seeks out a slave named Django and buys him because he needs him to find some men he is looking for. After finding them, Django wants to find his wife, Broomhilda, who along with him were sold separately by his former owner for trying to escape. Schultz offers to help him if he chooses to stay with him and be his partner. Eventually they learn that she was sold to a plantation in Mississippi. Knowing they can't just go in and say they want her, they come up with a plan so that the owner will welcome them into his home and they can find a way.", poster:"http://www.newdvdreleasedates.com/images/posters/large/django-unchained-2012-05.jpg"},
    {id: 2, title: "Schindler's List", rating: 9.0, year: 1993, genres: ["Biography","Drama","History","War"], director: "Steven Spielberg", actors: ["Liam Neeson", "Ben Kingsley", "Ralph Fiennes"], trailer: "https://www.youtube.com/watch?v=DxcSg6bL2Vg", shortDescription: "Oskar Schindler, a German industrialist and member of the Nazi party, tries to save his Jewish employees after witnessing the persecution of Jews in Poland during World War II.", poster: "https://image.tmdb.org/t/p/original/m0pV0fmMERzCvPVQbLLrPPLl5q1.jpg"},
    {id: 3, title: "Fight Club", rating: 8.8, year: 1999, genres: ["Drama","Psychological Thriller"], director: "David Fincher", actors: ["Brad Pitt", "Edward Norton", "Helena Bonham Carter"], trailer: "https://www.youtube.com/watch?v=QW9wNFpLYiY", shortDescription: "An insomniac office worker and a devil-may-care soapmaker form an underground fight club that evolves into something much, much more.", poster: "https://image.tmdb.org/t/p/original/8dR7Jd7DOEhU8cZ734Va17NRoZ2.jpg"},
    {id: 4, title: "Scarface", rating: 8.3, year: 1983, genres: ["Crime","Drama","Thriller"], director: "Brian De Palma", actors: ["Al Pacino", "Michelle Pfeiffer", "Steven Bauer"], trailer: "https://www.youtube.com/watch?v=lU3EHVMkizc", shortDescription: "In 1980 Miami, a determined Cuban immigrant takes over a drug cartel and succumbs to greed.", poster: "https://www.wallpapersun.com/wp-content/uploads/2023/05/Scarface-Wallpapersun-uighf.jpg"},
    {id: 5, title: "Saving Private Ryan", rating: 8.6, year: 1998, genres: ["Drama","War"], director: "Steven Spielberg", actors: ["Tom Hanks", "Matt Damon", "Tom Sizemore"], trailer: "https://www.youtube.com/watch?v=ved8259bfBI", shortDescription: "Following the Normandy Landings, a group of U.S. soldiers go behind enemy lines to retrieve a paratrooper whose brothers have been killed in action.", poster: "https://posterspy.com/wp-content/uploads/2019/10/Saving_private_ryan_poster_NEW.jpg"}
];

app.get('/api/movies', (req, res) => {
    res.status(200).json(movies);
})

app.get('/api/movies/:id', (req, res) => {
    const idFromUrl = parseInt(req.params.id);
    if (isNaN(idFromUrl)){
        return res.status(400).json({message: "ID nicht im korrekten Format"});
    }
    const movie = movies.find(m => m.id === idFromUrl);
    if (movie === undefined) {
        return res.status(404).json({message: "ID nicht existent. Bitte gib eine vorhandene ein."})
    }
    res.status(200).json(movie);
})




app.listen(3000, () => {
    console.log("Server läuft auf http://localhost:3000")
});