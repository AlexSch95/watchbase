function MovieModal({ movie, hideModal }) {
  return (
    <div className="overlay modal-overlay" onClick={hideModal}>
      <div
        className="modal fade show d-block"
        id="movieModal"
        tabIndex="-1"
        aria-labelledby="movieModalLabel"
        aria-hidden="true">
        <div className="modal-dialog modal-lg modal-dialog-centered">
          <div className="modal-content bg-dark text-white">
            <div className="modal-header">
              <h5 className="modal-title" id="movieModalLabel">
                {movie.title}
              </h5>
              <button
                type="button"
                className="btn-close btn-close-white"
                data-bs-dismiss="modal"
                aria-label="Schließen"
                onClick={hideModal}></button>
            </div>
            <div className="modal-body">
              <p id="movieDescription">{movie.shortDescription}</p>
              <h6>
                Regisseur: <span id="movieDirector">{movie.director}</span>
              </h6>
              <h6>
                Genres: <span id="movieGenres">{movie.genres}</span>
              </h6>
              <h6>
                Schauspieler: <span id="movieActors">{movie.actors}</span>
              </h6>
              <div className="ratio ratio-16x9 mt-3">
                <iframe
                  id="movieTrailer"
                  src={movie.trailer}
                  // src={null}
                  allowFullScreen
                  allow="autoplay"></iframe>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}

export default MovieModal;
