import Filter from "./Filter";
import MovieContainer from "./MovieContainer";

function Movies ({movies}) {
    return (
      <div className="container py-5">
        <Filter />
        <MovieContainer movies={movies} />
      </div>
    );
}

export default Movies;