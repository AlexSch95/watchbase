import logo from "./images/watchbase.png";

function Navbar() {
  return (
      <nav className="navbar navbar-expand-sm navbar-dark px-4">
        <div className="container-fluid">
          <a className="navbar-brand" href="index.html">
            <img className="img-navbar" src={logo} alt=""/>
          </a>
          <button
            className="navbar-toggler"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#navbarNav">
            <span className="navbar-toggler-icon"></span>
          </button>
          <div className="collapse navbar-collapse text-end" id="navbarNav">
            <ul className="navbar-nav ms-auto mb-2 mb-lg-0">
              <li className="nav-item">
                <a className="nav-link d-inline-block" href="index.html">
                  Home
                </a>
              </li>
              <li className="nav-item">
                <a className="nav-link d-inline-block" href="movies.html">
                  Filme
                </a>
              </li>
              <li className="nav-item">
                <a className="nav-link d-inline-block" href="watchlist.html">
                  Watchlist
                </a>
              </li>
              <li className="nav-item">
                <a className="nav-link d-inline-block" href="login.html">
                  Anmeldung
                </a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
  );
}

export default Navbar;
