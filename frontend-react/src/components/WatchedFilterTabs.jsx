function WatchedFilterTabs({ watchedFilter, setWatchedFilter }) {
  const watchFilterList = [
    "all_movies",
    "my_movies",
    "watchlist",
    "watched"
  ];
  const labelListGer = [
    "Alle Filme",
    "Meine Filme",
    "Watchlist",
    "Bereits gesehen"
  ]
  const listItems = [];

  for (let i = 0; i < watchFilterList.length; i++) {
    const oneFilter = watchFilterList[i];
    listItems.push(
    <li className="nav-item flex-sm-fill">
    <button
      id={`${oneFilter}-tab`}
      className={`nav-link text-uppercase font-weight-bold mr-sm-3 w-100 rounded-0 ${
        watchedFilter === oneFilter && "active"
      }`}
      role="tab"
      aria-controls={`${oneFilter}-tab`}
      aria-selected={watchedFilter === oneFilter ? "true" : "false"}
      onClick={() => setWatchedFilter(oneFilter)}
      >
      {labelListGer[i]}
    </button>
  </li>)

      }

  return (
    <ul
      id="watchFilterTabs"
      className="nav nav-tabs nav-pills with-arrow lined flex-column flex-sm-row text-center mb-3"
      role="tablist">
      {listItems}
      {/* <li
        className="nav-item flex-sm-fill"
        >
        <button
          id="all-movies-tab"
          className={`nav-link text-uppercase font-weight-bold mr-sm-3 w-100 rounded-0 ${
            watchedFilter === "all_movies" && "active"
          }`}
          role="tab"
          aria-controls="all-movies"
          aria-selected={watchedFilter === "all_movies" ? "true" : "false"}
          onClick={() => setWatchedFilter("all_movies")}
          >
          Alle Filme
        </button>
      </li>
      <li className="nav-item flex-sm-fill">
        <div
          id="my-movies-tab"
          className={`nav-link text-uppercase font-weight-bold mr-sm-3 w-100 rounded-0 ${
            watchedFilter === "my_movies" && "active"
          }`}
          // onClick={setWatchedFilter("my_movies")}
          role="tab"
          aria-controls="my-movies"
          aria-selected={watchedFilter === "my_movies" ? "true" : "false"}>
          Meine Filme
        </div>
      </li>
      <li className="nav-item flex-sm-fill">
        <div
          id="watchlist-tab"
          className={`nav-link text-uppercase font-weight-bold mr-sm-3 w-100 rounded-0 ${
            watchedFilter === "watchlist" && "active"
          }`}
          // onClick={setWatchedFilter("watchlist")}
          role="tab"
          aria-controls="watchlist"
          aria-selected={watchedFilter === "watchlist" ? "true" : "false"}>
          Watchlist
        </div>
      </li>
      <li className="nav-item flex-sm-fill">
        <div
          id="watched-tab"
          className={`nav-link text-uppercase font-weight-bold mr-sm-3 w-100 rounded-0 ${
            watchedFilter === "watched" && "active"
          }`}
          // onClick={setWatchedFilter("watched")}
          role="tab"
          aria-controls="watched"
          aria-selected={watchedFilter === "watched" ? "true" : "false"}>
          Bereits gesehen
        </div>
      </li> */}
    </ul>
  );
}

export default WatchedFilterTabs;