    //Durchläuft jedes Filmelement im Array movies.
    movies.forEach((movie) => {
      //Erstellt ein div-Element für die Spalte und fügt Bootstrap-Klassen hinzu, damit jede Karte in einem 3-Spalten-Raster angezeigt wird.
      const col = document.createElement("div");
      col.className = "col-md-4 mb-4";
      
      
      //Fügt der Spalte den HTML-Inhalt für eine Filmkarte hinzu – mit Bild, Titel, Bewertung und Jahr.Fügt der Spalte den HTML-Inhalt für eine Filmkarte hinzu – mit Bild, Titel, Bewertung und Jahr.
      col.innerHTML = `
        <div class="card h-100" data-id="${movie.id}">
          <img src="${movie.poster}" class="card-img-top" alt="${movie.title}" />
          <div class="card-body">
            <h5 class="movie-title">${movie.title}</h5>
            <p class="movie-meta">
              <span class="rating">${generateStars(movie.rating)} ${movie.rating}</span> | 
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
            <span class="rating">${generateStars(movie.rating)} ${movie.rating}</span> | 
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
  
  return '★'.repeat(fullStars) + (halfStar ? '½' : '') + '☆'.repeat(emptyStars);
}

//Die Funktion openMovieModal öffnet ein modales Fenster mit detaillierten Informationen über den ausgewählten Film.
function openMovieModal(movie) {
  document.getElementById("movieModalLabel").textContent = movie.title;
  document.getElementById("movieDescription").textContent = movie.shortDescription;
  document.getElementById("movieDirector").textContent = movie.director;
  document.getElementById("movieGenres").textContent = movie.genres.join(", ");
  document.getElementById("movieActors").textContent = movie.actors.join(", ");
  document.getElementById("movieTrailer").src = movie.trailer;
  modal.show();
}


    // Dieser Ereignis-Handler setzt das src-Attribut des Trailers zurück, wenn das Modal geschlossen wird. Dadurch wird verhindert, dass das Video nach dem Schließen des Modals weiter abgespielt wird.
    document.getElementById("movieModal").addEventListener("hidden.bs.modal", () => {
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