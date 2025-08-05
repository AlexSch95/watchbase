let userMoviesFromApi = [];
getUserMovies();
const watchlistContainer = document.getElementById("watchlist");
const watchedContainer = document.getElementById("watched");


async function getUserMovies() {
  try {
    const token = localStorage.getItem("jwttoken");
    const res = await fetch("http://localhost:3000/api/movies/user", {
    headers: {
    authorization: `Bearer ${token}`,
    },
    });
    const data = await res.json();
    userMoviesFromApi = data
    console.log("Filme geladen", data);
  } catch (error) {
    console.error(error)
  } finally {
    displayUserMovies(userMoviesFromApi);
  }
}

function displayUserMovies(movieList) {
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
    switch (movie.watched_status){
      case "1":
        watchedContainer.appendChild(col);
        break;
      case "0":
        watchlistContainer.appendChild(col);
        break;
    }
  });
}

  function generateStars(rating) {
  const fullStars = Math.floor(rating);
  const halfStar = rating % 1 >= 0.5;
  const emptyStars = 10 - fullStars - (halfStar ? 1 : 0);

  return "★".repeat(fullStars) + (halfStar ? "⯪" : "") + "☆".repeat(emptyStars);
}

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
