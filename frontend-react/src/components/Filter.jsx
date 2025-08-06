function Filter () {
  return (
    <div className="text-center mb-4">
        <div className="d-flex justify-content-end mb-4">
          <div className="d-flex genre-filter-box p-2 gap-2">
            <input
              id="titleSearch"
              type="text"
              className="form-control bg-dark text-white border-secondary"
              placeholder="Suche nach Filmtitel..."/>
            <select
              id="genreFilter"
              className="form-select bg-dark text-white border-secondary">
              <option value="all">Alle Genres</option>
            </select>
          </div>
        </div>
      </div>
  );
}

export default Filter;