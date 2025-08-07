function MovieCard({ movie, generateStars, onSelect, loggedIn }) {
  // addToWatchlist hinzufügen
  function handleCardClicked() {
    onSelect();
  }
  function handleAddToWatchlist(event) {
    event.stopPropagation();
    // addToWatchlist();
  }

  return (
    <div className="col-md-4 mb-4">
      <div className="card h-100" onClick={handleCardClicked}>
        <img src={movie.poster} className="card-img-top" alt={movie.title} />
        <div className="card-body">
          <h5 className="movie-title">{movie.title}</h5>
          <div className="movie-meta">
            <span className="rating">
              {`${generateStars(movie.rating)} ${movie.rating}`}
            </span>
            <span className="movie-title"> - </span>
            <span className="year">{movie.year}</span>
          </div>
          {!loggedIn ? (
            ""
          ) : (
            <div className="d-flex justify-content-end">
              (<a
                href="#"
                className="btn btn-danger watch-button"
                onClick={handleAddToWatchlist}>
                👁️
              </a>)
              (<a
                href="#"
                className="btn btn-danger watch-button"
                onClick={handleAddToWatchlist}>
                👁️
              </a>)
              (<a href="#" className="btn btn-danger watch-button">
                ⛉
              </a>)
            </div>
          )}
        </div>
      </div>
    </div>
  );
}

export default MovieCard;
