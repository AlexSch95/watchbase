function WatchedFilterTabs({ watchedFilter, setWatchedFilter }) {
  const watchFilterList = ["all_movies", "my_movies", "watchlist", "watched"];
  const labelListGer = [
    "Alle Filme",
    "Meine Filme",
    "Watchlist",
    "Bereits gesehen",
  ];
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
          onClick={() => setWatchedFilter(oneFilter)}>
          {labelListGer[i]}
        </button>
      </li>
    );
  }

  return (
    <ul
      id="watchFilterTabs"
      className="nav nav-tabs nav-pills with-arrow lined flex-column flex-sm-row text-center mb-3"
      role="tablist">
      {listItems}
    </ul>
  );
}

export default WatchedFilterTabs;
