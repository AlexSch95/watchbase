import { useState, useEffect } from "react";
import Filter from "./Filter";
import MovieContainer from "./MovieContainer";
import MovieModal from "./MovieModal";
import WatchedFilterTabs from "./WatchedFilterTabs";

function Movies({loggedIn}) {
  const [movies, setMovies] = useState([]);
  const [filteredMovies, setFilteredMovies] = useState([]);
  const [genres, setGenres] = useState([]);
  // Zustand definieren für ausgewähltes Genre und eingegebener Titel in Filter-Komponente
  const [selectedGenre, setSelectedGenre] = useState("all");
  const [searchTitle, setSearchTitle] = useState("");
  const [selectedMovie, setSelectedMovie] = useState(null);
  const [watchedFilter, setWatchedFilter] = useState("all_movies");

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
      if (loggedIn && watchedFilter !== "all_movies") {
        switch (watchedFilter) {
          case "my_movies":
            filtered = filtered.filter((movie) => movie.watched_status !== null);
            break;
          case "watchlist":
            filtered = filtered.filter(
              (movie) => movie.watched_status === 0
            );
            break;
          case "watched":
            filtered = filtered.filter((movie) => movie.watched_status === 1);
            break;
          default:
            console.error("watchedFilter fehlerhaft");
            break;
        }
      }

      setFilteredMovies(filtered);
    }
    applyFilters();
  }, [selectedGenre, searchTitle, movies, watchedFilter, loggedIn]);

  function hideModal () {
    setSelectedMovie(null);
  }

  function changeWatchedStatus(movie, watched_status) {
    const new_movie = { ...movie, watched_status: watched_status };
    const changedMovies = movies.map((movie) =>
      movie.id === new_movie.id ? new_movie : movie
    );
    setMovies(changedMovies);
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
      {loggedIn &&
        <WatchedFilterTabs
          watchedFilter={watchedFilter}
          setWatchedFilter={setWatchedFilter}
        />
      }
      <MovieContainer
        movies={filteredMovies}
        setSelectedMovie={setSelectedMovie}
        loggedIn={loggedIn}
        changeWatchedStatus={changeWatchedStatus}
      />
      {selectedMovie &&
        <MovieModal
          movie={selectedMovie}
          hideModal={hideModal}
        />
      }
    </div>
  );
}

export default Movies;
