import Filter from "./Filter";
import MovieContainer from "./MovieContainer";

function Movies ({movies}) {
    return (
      <div className="container py-5">
        <Filter />
        <h1 className="text-center mb-5">Filme:</h1>
        <MovieContainer movies={movies} />
      </div>
    );
}

export default Movies;