import Filter from "./Filter";
import MovieContainer from "./MovieContainer";

function Movies ({movies}) {
    return (
        <>
          <Filter/>
          <MovieContainer movies={movies}/>
        </>
    );
}

export default Movies;