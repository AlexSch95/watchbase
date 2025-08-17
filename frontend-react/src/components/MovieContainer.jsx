import MovieCard from "./MovieCard";

function MovieContainer({
  movies,
  setSelectedMovie,
  loggedIn,
  changeWatchedStatus,
}) {
  function generateStars(rating) {
    const fullStars = Math.floor(rating);
    const halfStar = rating % 1 >= 0.5;
    const emptyStars = 10 - fullStars - (halfStar ? 1 : 0);
    return (
      "★".repeat(fullStars) + (halfStar ? "⯪" : "") + "☆".repeat(emptyStars)
    );
  }

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
          changeMovieState={(w) => changeWatchedStatus(movie, w)}
        />
      ))}
    </div>
  );
}

export default MovieContainer;