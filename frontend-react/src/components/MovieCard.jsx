function MovieCard({ movie, generateStars }) {
  return (
    <div className="card h-100">
      <img src={movie.poster} className="card-img-top" alt={movie.title} />
      <div className="card-body">
        <h5 className="movie-title">{movie.title}</h5>
        <p className="movie-meta">
          <span className="rating">
            {`${generateStars(movie.rating)} ${movie.rating}`}
          </span>
          <span className="year">{movie.year}</span>
        </p>
        <div className="d-flex justify-content-end">
            <a href="#" className="btn btn-danger watch-button">
              👁️
            </a>
            <a href="#" className="btn btn-danger watch-button">
              ⛉
            </a>
          </div>
      </div>
    </div>
  );
}

export default MovieCard;
