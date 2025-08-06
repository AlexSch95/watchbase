import MovieCard from "./MovieCard";

function MovieContainer ({movies}) {

  function generateStars(rating) {
    const fullStars = Math.floor(rating);
    const halfStar = rating % 1 >= 0.5;
    const emptyStars = 10 - fullStars - (halfStar ? 1 : 0);
    return "★".repeat(fullStars) + (halfStar ? "⯪" : "") + "☆".repeat(emptyStars);
  }
  console.log(movies)
  return (
    <div className="row">
      <h1>Movies:</h1>
      {movies.map(
        movie => {
          console.log('loading...', movie);
          <MovieCard
            key={movie.id}
            movie={movie}
            generateStars={generateStars}
          />
        }
      )}
    </div>
  );
}

export default MovieContainer;