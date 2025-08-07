import { useState, useEffect } from "react";
import Filter from "./Filter";
import MovieContainer from "./MovieContainer";
import MovieModal from "./MovieModal";

function Movies() {
  const [movies, setMovies] = useState([]);
  const [filteredMovies, setFilteredMovies] = useState([]);
  const [genres, setGenres] = useState([]);
  // Zustand definieren für ausgewähltes Genre und eingegebener Titel in Filter-Komponente
  const [selectedGenre, setSelectedGenre] = useState("all");
  const [searchTitle, setSearchTitle] = useState("");
  const [selectedMovie, setSelectedMovie] = useState(null);

  // Alle Filme ziehen
  useEffect(() => {
    async function getMovies() {
      try {
        const response = await fetch("http://localhost:3000/api/movies");
        if (!response.ok) {
          throw new Error(`HTTP Error: ${response.status}`);
        }
        const moviesFromApi = await response.json();
        setMovies(moviesFromApi);
        // setFilteredMovies(moviesFromApi);
        console.log("Filme geladen: ", moviesFromApi);
      } catch (error) {
        console.log("Fehler beim Laden", error);
      }
    }
    getMovies();
  }, []);

  // Alle Genres ziehen
  useEffect(() => {
    async function getGenres() {
      try {
        const response = await fetch("http://localhost:3000/api/genres");
        if (!response.ok) {
          throw new Error(`HTTP Error: ${response.status}`);
        }
        const genresFromApi = await response.json();
        setGenres(genresFromApi);
        console.log("Genres geladen: ", genresFromApi);
      } catch (error) {
        console.log("Fehler beim Laden", error);
      }
    }
    getGenres();
  }, []);

  // Gefilterte Filme jedes mal, wenn Suchfilter angewendet werden
  useEffect(() => {
    function applyFilters() {
      let filtered = movies;

      if (selectedGenre !== "all") {
        filtered = filtered.filter((movie) =>
          movie.genres.includes(selectedGenre)
        );
      }

      if (searchTitle !== "") {
        filtered = filtered.filter((movie) =>
          movie.title.toLowerCase().includes(searchTitle.toLowerCase())
        );
      }
      setFilteredMovies(filtered);
    }
    applyFilters();
  }, [selectedGenre, searchTitle, movies]);

  useEffect(() => {
    selectedMovie && console.log(selectedMovie.title)
  }, [selectedMovie])

  // setSelectedMovie({title: "abcd"})

  return (
    <div className="container py-5">
      <Filter
        genres={genres}
        setSelectedGenre={setSelectedGenre}
        setSearchTitle={setSearchTitle}
      />
      <MovieContainer
        movies={filteredMovies}
        setSelectedMovie={setSelectedMovie}
      />
      {selectedMovie && <MovieModal movie={selectedMovie}/>}
    </div>
  );
}

export default Movies;
