import MovieCard from "./MovieCard";

function MovieContainer({ movies, setSelectedMovie}) {
  function generateStars(rating) {
    const fullStars = Math.floor(rating);
    const halfStar = rating % 1 >= 0.5;
    const emptyStars = 10 - fullStars - (halfStar ? 1 : 0);
    return (
      "★".repeat(fullStars) + (halfStar ? "⯪" : "") + "☆".repeat(emptyStars)
    );
  }
  // console.log(movies)
  return (
    <div className="row" id="movieContainer">
      {movies.map((movie) => (
        <MovieCard
          key={movie.id}
          movie={movie}
          generateStars={generateStars}
          setSelectedMovie={setSelectedMovie}
        />
      ))}
    </div>
  );
}

export default MovieContainer;