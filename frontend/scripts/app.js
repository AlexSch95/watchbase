const movies = [
  {
    id: 1,
    title: "Django Unchained",
    rating: 8.5,
    year: 2012,
    genres: [
      "Dark Comedy",
      "Epic",
      "Period Drama",
      "Western Epic",
      "Comedy",
      "Drama",
      "Western",
    ],
    director: "Quentin Tarantino",
    actors: ["Jamie Foxx", "Christoph Waltz", "Leonardo DiCaprio"],
    trailer: "https://www.youtube.com/embed/0RjoVdtE2nk",
    shortDescription:
      "In 1858, a bounty-hunter named King Schultz seeks out a slave named Django and buys him because he needs him to find some men he is looking for. ...",
    poster:
      "http://www.newdvdreleasedates.com/images/posters/large/django-unchained-2012-05.jpg",
  },
  {
    id: 2,
    title: "Schindler's List",
    rating: 9.0,
    year: 1993,
    genres: ["Biography", "Drama", "History", "War"],
    director: "Steven Spielberg",
    actors: ["Liam Neeson", "Ben Kingsley", "Ralph Fiennes"],
    trailer: "https://www.youtube.com/embed/DxcSg6bL2Vg",
    shortDescription:
      "Oskar Schindler, a German industrialist and member of the Nazi party, tries to save his Jewish employees after witnessing the persecution of Jews...",
    poster:
      "https://image.tmdb.org/t/p/original/m0pV0fmMERzCvPVQbLLrPPLl5q1.jpg",
  },
  {
    id: 3,
    title: "Fight Club",
    rating: 8.8,
    year: 1999,
    genres: ["Drama", "Psychological Thriller"],
    director: "David Fincher",
    actors: ["Brad Pitt", "Edward Norton", "Helena Bonham Carter"],
    trailer: "https://www.youtube.com/embed/QW9wNFpLYiY",
    shortDescription:
      "An insomniac office worker and a devil-may-care soapmaker form an underground fight club that evolves into something much more...",
    poster:
      "https://image.tmdb.org/t/p/original/8dR7Jd7DOEhU8cZ734Va17NRoZ2.jpg",
  },
  {
    id: 4,
    title: "Scarface",
    rating: 8.3,
    year: 1983,
    genres: ["Crime", "Drama", "Thriller"],
    director: "Brian De Palma",
    actors: ["Al Pacino", "Michelle Pfeiffer", "Steven Bauer"],
    trailer: "https://www.youtube.com/embed/lU3EHVMkizc",
    shortDescription:
      "In 1980 Miami, a determined Cuban immigrant takes over a drug cartel and succumbs to greed.",
    poster:
      "https://www.wallpapersun.com/wp-content/uploads/2023/05/Scarface-Wallpapersun-uighf.jpg",
  },
  {
    id: 5,
    title: "Saving Private Ryan",
    rating: 8.6,
    year: 1998,
    genres: ["Drama", "War"],
    director: "Steven Spielberg",
    actors: ["Tom Hanks", "Matt Damon", "Tom Sizemore"],
    trailer: "https://www.youtube.com/embed/ved8259bfBI",
    shortDescription:
      "Following the Normandy Landings, a group of U.S. soldiers go behind enemy lines to retrieve a paratrooper...",
    poster:
      "https://posterspy.com/wp-content/uploads/2019/10/Saving_private_ryan_poster_NEW.jpg",
  },
  {
    id: 6,
    title: "Back to the Future",
    rating: 8.5,
    year: 1985,
    genres: [
      "High-Concept Comedy",
      "Teen Adventure",
      "Time Travel",
      "Urban Adventure",
      "Adventure",
      "Comedy",
      "Sci-Fi",
    ],
    director: "Robert Zemeckis",
    actors: [
      "Michael J. Fox",
      "Christopher Lloyd",
      "Crispin Glover",
      "Lea Thompson",
      "Claudia Wells",
      "Thomas F. Wilson",
    ],
    trailer: "https://www.youtube.com/watch?v=qvsgGtivCgs",
    shortDescription:
      "'Back to the Future' is a classic 1985 science fiction film where teenager Marty McFly is accidentally sent back in time from 1985 to 1955 in a time-traveling DeLorean. To return to his own time, he must ensure his parents fall in love, all while avoiding inadvertently erasing himself from existence. ",
    poster:
      "https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p11991_p_v8_ap.jpg",
  },
];

const movieContainer = document.getElementById("movieContainer");
const modal = new bootstrap.Modal(document.getElementById("movieModal"));

//Durchläuft jedes Filmelement im Array movies.
movies.forEach((movie) => {
  //Erstellt ein div-Element für die Spalte und fügt Bootstrap-Klassen hinzu, damit jede Karte in einem 3-Spalten-Raster angezeigt wird.
  const col = document.createElement("div");
  col.className = "col-md-4 mb-4";

  //Fügt der Spalte den HTML-Inhalt für eine Filmkarte hinzu – mit Bild, Titel, Bewertung und Jahr.Fügt der Spalte den HTML-Inhalt für eine Filmkarte hinzu – mit Bild, Titel, Bewertung und Jahr.
  col.innerHTML = `
        <div class="card h-100" data-id="${movie.id}">
          <img src="${movie.poster}" class="card-img-top" alt="${
    movie.title
  }" />
          <div class="card-body">
            <h5 class="movie-title">${movie.title}</h5>
            <p class="movie-meta">
              <span class="rating">${generateStars(movie.rating)} ${
    movie.rating
  }</span> |
              <span class="year">${movie.year}</span>
            </p>
          </div>
        </div>
      `;

  //Fügt einen Klick-Event hinzu, um beim Klicken die Detailansicht (Modal) des Films zu öffnen
  col.addEventListener("click", () => openMovieModal(movie));

  //Fügt die erstellte Spalte in den Container (movieContainer) ein, sodass sie auf der Seite angezeigt
  movieContainer.appendChild(col);
});

// Fügt einen Ereignis-Listener (EventListener) zum Dropdown-Menü mit der ID genreFilter hinzu.
document.getElementById("genreFilter").addEventListener("change", filterMovies);

//Die Funktion filterMovies() filtert die Filme nach dem aktuell ausgewählten Genre im Dropdown-Menü. Danach wird der vorherige Inhalt des Film-Containers gelöscht, und nur die Filme, die zum gewählten Genre passen, werden erneut in Form von Karten angezeigt. Jede Karte zeigt das Poster, den Titel, die Bewertung mit Sternen und das Jahr. Beim Klicken auf eine Karte wird ein Modal mit Details geöffnet.
function filterMovies() {
  const selectedGenre = document.getElementById("genreFilter").value;
  movieContainer.innerHTML = "";

  const filtered = movies.filter((movie) => {
    return selectedGenre === "" || movie.genres.includes(selectedGenre);
  });

  filtered.forEach((movie) => {
    const col = document.createElement("div");
    col.className = "col-md-4 mb-4";

    col.innerHTML = `
      <div class="card h-100" data-id="${movie.id}">
        <img src="${movie.poster}" class="card-img-top" alt="${movie.title}" />
        <div class="card-body">
          <h5 class="movie-title">${movie.title}</h5>
          <p class="movie-meta">
            <span class="rating">${generateStars(movie.rating)} ${
      movie.rating
    }</span> |
            <span class="year">${movie.year}</span>
          </p>
        </div>
      </div>
    `;

    col.addEventListener("click", () => openMovieModal(movie));
    movieContainer.appendChild(col);
  });
}

//Die Funktion generateStars(rating) erstellt eine visuelle Darstellung der Bewertung eines Films mit Sternen. Sie berechnet, wie viele volle Sterne, halbe Sterne und leere Sterne angezeigt werden sollen, basierend auf einer Bewertungsskala von 0 bis 10. Das Ergebnis ist eine Zeichenkette mit Symbolen, die die Bewertung grafisch darstellen.
function generateStars(rating) {
  const fullStars = Math.floor(rating);
  const halfStar = rating % 1 >= 0.5;
  const emptyStars = 10 - fullStars - (halfStar ? 1 : 0);

  return "★".repeat(fullStars) + (halfStar ? "½" : "") + "☆".repeat(emptyStars);
}

//Die Funktion openMovieModal öffnet ein modales Fenster mit detaillierten Informationen über den ausgewählten Film.
function openMovieModal(movie) {
  document.getElementById("movieModalLabel").textContent = movie.title;
  document.getElementById("movieDescription").textContent =
    movie.shortDescription;
  document.getElementById("movieDirector").textContent = movie.director;
  document.getElementById("movieGenres").textContent = movie.genres.join(", ");
  document.getElementById("movieActors").textContent = movie.actors.join(", ");
  document.getElementById("movieTrailer").src = movie.trailer;
  modal.show();
}

// Dieser Ereignis-Handler setzt das src-Attribut des Trailers zurück, wenn das Modal geschlossen wird. Dadurch wird verhindert, dass das Video nach dem Schließen des Modals weiter abgespielt wird.
document
  .getElementById("movieModal")
  .addEventListener("hidden.bs.modal", () => {
    document.getElementById("movieTrailer").src = "";
  });

function handleEmail() {
  const email = document.getElementById("emailInput").value.trim();
  const isValid = /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email);

  if (!isValid) {
    alert("Bitte geben Sie eine gültige E-Mail-Adresse ein.");
    return;
  }

  // Email übergang auf die nächste Seite
  window.location.href = "movies.html";
}

//Dieser Funktionsaufruf startet die Filterfunktion, um passende Filme auf der Seite anzuzeigen – entweder beim ersten Laden oder nach einer Änderung des Filters.
filterMovies();
