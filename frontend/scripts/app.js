let movies = [];
let genres = [];
getMovies();
getGenres();
const movieContainer = document.getElementById("movieContainer");
const modal = new bootstrap.Modal(document.getElementById("movieModal"));
const genreFilter = document.getElementById("genreFilter");


async function getMovies() {
  try {
    const response = await fetch('http://localhost:3000/api/movies')
    if (!response.ok){
      throw new Error(`HTTP Error: ${response.status}`);
    }
    const moviesFromApi = await response.json();
    movies = moviesFromApi;
    console.log("Filme geladen", movies);
  } catch (error) {
    console.log("Fehler beim Laden", error);
  } finally {
    displayMovies(movies);
  }
}

async function getGenres() {
  try {
    const response = await fetch('http://localhost:3000/api/genres')
    if (!response.ok) {
      throw new Error(`HTTP Error: ${response.status}`);
    }
    const genresFromApi = await response.json();
    genres = genresFromApi;
    console.log("Genres geladen", genres)
  } catch (error) {
    console.log("Fehler beim Laden", error);
  } finally {
    fillGenreFilter(genres);
  }
}

function fillGenreFilter(genres) {
  genres.forEach((genre) => {
    const filterEntry = document.createElement("option");
    filterEntry.value = genre.genre_name;
    filterEntry.innerHTML = `${genre.genre_name}`;
    genreFilter.appendChild(filterEntry);
    // <option value="Drama">Drama</option>
  })
}

//Durchläuft jedes Filmelement im Array movies.
function displayMovies(movieList) {
  movieList.forEach((movie) => {
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
              <div class="d-flex justify-content-end">
                <a href="#" class="btn btn-danger" style="width: 50px">👁️</a>
                <a href="#" class="btn btn-danger" style="width: 50px">⛉</a>
              </div>
            </div>
          </div>
                  `;

    //Fügt einen Klick-Event hinzu, um beim Klicken die Detailansicht (Modal) des Films zu öffnen
    col.addEventListener("click", () => openMovieModal(movie));

    //Fügt die erstellte Spalte in den Container (movieContainer) ein, sodass sie auf der Seite angezeigt
    movieContainer.appendChild(col);
  });
}

// Fügt einen Ereignis-Listener (EventListener) zum Dropdown-Menü mit der ID genreFilter hinzu.
genreFilter.addEventListener("change", () =>{
  //Die Funktion filterMovies() filtert die Filme nach dem aktuell ausgewählten Genre im Dropdown-Menü. Danach wird der vorherige Inhalt des Film-Containers gelöscht, und nur die Filme, die zum gewählten Genre passen, werden erneut in Form von Karten angezeigt. Jede Karte zeigt das Poster, den Titel, die Bewertung mit Sternen und das Jahr. Beim Klicken auf eine Karte wird ein Modal mit Details geöffnet.
  const selectedGenre = genreFilter.value;
  movieContainer.innerHTML = "";
  let filtered = movies;
  if (selectedGenre !== "all") {
    filtered = movies.filter((movie) => movie.genres.includes(selectedGenre));
  }
  displayMovies(filtered);
});

//Die Funktion generateStars(rating) erstellt eine visuelle Darstellung der Bewertung eines Films mit Sternen. Sie berechnet, wie viele volle Sterne, halbe Sterne und leere Sterne angezeigt werden sollen, basierend auf einer Bewertungsskala von 0 bis 10. Das Ergebnis ist eine Zeichenkette mit Symbolen, die die Bewertung grafisch darstellen.
function generateStars(rating) {
  const fullStars = Math.floor(rating);
  const halfStar = rating % 1 >= 0.5;
  const emptyStars = 10 - fullStars - (halfStar ? 1 : 0);

  return "★".repeat(fullStars) + (halfStar ? "⯪" : "") + "☆".repeat(emptyStars);
}

//Die Funktion openMovieModal öffnet ein modales Fenster mit detaillierten Informationen über den ausgewählten Film.
function openMovieModal(movie) {
  document.getElementById("movieModalLabel").textContent = movie.title;
  document.getElementById("movieDescription").textContent =
    movie.shortDescription;
  document.getElementById("movieDirector").textContent = movie.director;
  document.getElementById("movieGenres").textContent = movie.genres;
  document.getElementById("movieActors").textContent = movie.actors;
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
