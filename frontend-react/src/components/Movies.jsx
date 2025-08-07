import { useState, useEffect } from "react";
import Filter from "./Filter";
import MovieContainer from "./MovieContainer";
import MovieModal from "./MovieModal";

function Movies({loggedIn}) {
  const [movies, setMovies] = useState([]);
  const [filteredMovies, setFilteredMovies] = useState([]);
  const [genres, setGenres] = useState([]);
  // Zustand definieren für ausgewähltes Genre und eingegebener Titel in Filter-Komponente
  const [selectedGenre, setSelectedGenre] = useState("all");
  const [searchTitle, setSearchTitle] = useState("");
  const [selectedMovie, setSelectedMovie] = useState(null);
  const [watchedFilter, setWatchedFilter] = useState(null);

  // Alle Filme ziehen
  useEffect(() => {
    async function getMovies() {
      try {
        let response;
        if (loggedIn) {
          const token = localStorage.getItem("jwttoken");
          response = await fetch(
            "http://localhost:3000/api/movies/user/all",
            {headers: {authorization: `Bearer ${token}`}}
          );
        } else {
          response = await fetch("http://localhost:3000/api/movies");
        }
        if (!response.ok) {
          throw new Error(`HTTP Error: ${response.status}`);
        }
        const moviesFromApi = await response.json();
        setMovies(moviesFromApi);
        console.log("Filme geladen: ", moviesFromApi);
      } catch (error) {
        console.log("Fehler beim Laden", error);
      }
    }
    getMovies();
  }, [loggedIn]);

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
      if (loggedIn && watchedFilter !== null) {
        if (watchedFilter === 2) {
          filtered = filtered.filter((movie) => movie.watched_status !== null)
        } else {
          filtered = filtered.filter((movie) => movie.watched_status !== watchedFilter);
        }
      }

      setFilteredMovies(filtered);
    }
    applyFilters();
  }, [selectedGenre, searchTitle, movies, watchedFilter]);

  function hideModal () {
    setSelectedMovie(null);
  }

  return (
    <div className="container py-5">
      <Filter
        genres={genres}
        setSelectedGenre={setSelectedGenre}
        setSearchTitle={setSearchTitle}
        loggedIn={loggedIn}
        setWatchedFilter={setWatchedFilter}
      />
      <MovieContainer
        movies={filteredMovies}
        setSelectedMovie={setSelectedMovie}
        loggedIn={loggedIn}
      />
      {selectedMovie && (
        <MovieModal movie={selectedMovie} hideModal={hideModal} />
      )}
    </div>
  );
}

export default Movies;
