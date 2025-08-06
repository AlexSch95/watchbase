function Filter ({genres, setSelectedGenre, setSearchTitle}) {
  return (
    <div className="text-center mb-4">
      <div className="d-flex justify-content-end mb-4">
        <div className="d-flex genre-filter-box p-2 gap-2">
          <input
            id="titleSearch"
            type="text"
            className="form-control bg-dark text-white border-secondary"
            placeholder="Suche nach Filmtitel..."
            onChange={(event) => setSearchTitle(event.target.value)}
          />
          <select
            id="genreFilter"
            // value={selectedGenre}
            onChange={(event) => setSelectedGenre(event.target.value)}
            className="form-select bg-dark text-white border-secondary"
            // onChange={applyFilters()}
          >
            <option value="all">Alle Genres</option>
            {genres.map((genre) => (
              <option value={genre.genre_name}>{genre.genre_name}</option>
            ))}
          </select>
        </div>
      </div>
    </div>
  );
}

export default Filter;