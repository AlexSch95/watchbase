import MovieCard from "./MovieCard";

function MovieContainer({ movies, setSelectedMovie, loggedIn, setMovies }) {
  function generateStars(rating) {
    const fullStars = Math.floor(rating);
    const halfStar = rating % 1 >= 0.5;
    const emptyStars = 10 - fullStars - (halfStar ? 1 : 0);
    return "★".repeat(fullStars) + (halfStar ? "⯪" : "") + "☆".repeat(emptyStars);
  }

  function changeWatchedStatus(movie_id, watched_status) {
    movies.map((movie) => {
      if (movie.id === movie_id) {
        movie.watched_status = watched_status;
      }})
    setMovies(movies);
  }
  // console.log(movies)
  return (
    <div className="row" id="movieContainer">
      {movies.map((movie) => (
        // console.log(movie.id),
        <MovieCard
          key={movie.id}
          movie={movie}
          generateStars={generateStars}
          loggedIn={loggedIn}
          // setSelectedMovie={setSelectedMovie}
          onSelect={() => setSelectedMovie(movie)}
          changeMovieState={(w) => changeWatchedStatus(movie.id, w)}
        />
      ))}
    </div>
  );
}

export default MovieContainer;