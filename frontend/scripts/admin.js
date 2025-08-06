let genres = [];
let actors = [];
const genreDropdown = document.getElementById("genreSelect");

document.addEventListener('DOMContentLoaded', function() {
    const selectedGenres = [];
    const selectedActors = [];
    
    // Genre hinzufügen
    document.getElementById('addGenre').addEventListener('click', function() {
        const genreSelect = document.getElementById('genreSelect');
        const genre = genreSelect.value;
        
        if (genre && !selectedGenres.includes(genre)) {
            selectedGenres.push(genre);
            updateSelectedItems('selectedGenres', selectedGenres, 'genres');
            genreSelect.value = '';
        }
    });
    
    // Schauspieler hinzufügen
    document.getElementById('addActor').addEventListener('click', function() {
        const actorInput = document.getElementById('actorInput');
        const actor = actorInput.value.trim();
        
        if (actor && !selectedActors.includes(actor)) {
            selectedActors.push(actor);
            updateSelectedItems('selectedActors', selectedActors, 'actors');
            actorInput.value = '';
        }
    });
    
    // Ausgewählte Items aktualisieren
    function updateSelectedItems(containerId, items, hiddenInputId) {
        const container = document.getElementById(containerId);
        const hiddenInput = document.getElementById(hiddenInputId);
        
        container.innerHTML = '';
        items.forEach((item, index) => {
            const itemElement = document.createElement('div');
            itemElement.className = 'selected-item';
            itemElement.innerHTML = `${item} <span class="remove-item" data-index="${index}">&times;</span>`;
            container.appendChild(itemElement);
        });
        
        hiddenInput.value = JSON.stringify(items);
        
        // Event Listener für Entfernen-Buttons
        document.querySelectorAll('.remove-item').forEach(button => {
            button.addEventListener('click', function() {
                const index = parseInt(this.getAttribute('data-index'));
                if (containerId === 'selectedGenres') {
                    selectedGenres.splice(index, 1);
                    updateSelectedItems('selectedGenres', selectedGenres, 'genres');
                } else {
                    selectedActors.splice(index, 1);
                    updateSelectedItems('selectedActors', selectedActors, 'actors');
                }
            });
        });
    }
});

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
    genreDropdown.appendChild(filterEntry);
    // <option value="Drama">Drama</option>
  })
}