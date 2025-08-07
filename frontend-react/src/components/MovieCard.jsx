function MovieCard({ movie, generateStars, onSelect, loggedIn }) {
  // addToWatchlist hinzufügen
  function handleCardClicked() {
    onSelect();
  }
  function handleAdd(event) {
    event.stopPropagation();
    addWatchlistEntry(movie.id, 0);
  }
  function handleWatch(event) {
    event.stopPropagation();
    addWatchlistEntry(movie.id, 1);
  }
  function handleDelete(event) {
    event.stopPropagation();
    deleteWatchlistEntry(movie.id);
  }

  async function addWatchlistEntry(id, status) {
    try {
      const token = localStorage.getItem("jwttoken");
      const response = await fetch(
        "http://localhost:3000/api/user/movies/add",
        {
          method: "POST",
          headers: {
            authorization: `Bearer ${token}`,
            "Content-Type": "application/json",
          },
          body: JSON.stringify({
            movie_id: id,
            watched_status: status,
          }),
        }
      );
      if (!response.ok) {
        throw new Error(`HTTP Error: ${response.status}`);
      }
    } catch (error) {
      console.log("Fehler beim hinzufügen zur Watchlist", error);
    }
  }

  async function deleteWatchlistEntry(id) {
    try {
      const token = localStorage.getItem("jwttoken");
      const response = await fetch(
        "http://localhost:3000/api/user/movies/delete",
        {
          method: "DELETE",
          headers: {
            authorization: `Bearer ${token}`,
            "Content-Type": "application/json",
          },
          body: JSON.stringify({
            movie_id: id,
          }),
        }
      );
      if (!response.ok) {
        throw new Error(`HTTP Error: ${response.status}`);
      }
    } catch (error) {
      console.log("Fehler beim Löschen von der Watchlist", error);
    }
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
              {movie.watched_status === 0 ? (
                ""
              ) : (
                <button
                  className="btn btn-warning watch-button"
                  onClick={handleAdd}>
                  👁️
                </button>
              )}{" "}
              {movie.watched_status === 1 ? (
                ""
              ) : (
                <button
                  className="btn btn-success watch-button"
                  onClick={handleWatch}>
                  ✔️
                </button>
              )}{" "}
              {movie.watched_status === null ? (
                ""
              ) : (
                <button
                  className="btn btn-danger watch-button"
                  onClick={handleDelete}>
                  ✖️
                </button>
              )}
            </div>
          )}
        </div>
      </div>
    </div>
  );
}

export default MovieCard;
