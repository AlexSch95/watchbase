import { Link } from "react-router-dom";
import logo from "./images/watchbasev2.png";

function Navbar({
  showLogin = () => {},
  loggedIn = false,
  logOut = () => {},
  setWatchList = () => {}, 
}) {
  return (
    <nav className="navbar navbar-expand-sm navbar-dark px-4">
      <div className="container-fluid">
        <Link className="navbar-brand" to="/">
          <img className="img-navbar" src={logo} alt="Watchbase" />
        </Link>

        <button className="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
          <span className="navbar-toggler-icon"></span>
        </button>

        <div className="collapse navbar-collapse text-end" id="navbarNav">
          <ul className="navbar-nav ms-auto mb-2 mb-lg-0">
            <li className="nav-item">
              <Link className="nav-link" to="/">Home</Link>
            </li>

            <li className="nav-item">
              <Link className="nav-link" to="/">Filme</Link>
            </li>

            {loggedIn && (
              <li className="nav-item">
                <Link className="nav-link" to="/watchlist">Watchlist</Link>
              </li>
            )}

            <li className="nav-item">
              <a
                className="nav-link d-inline-block"
                href="#"
                onClick={(e) => { e.preventDefault(); loggedIn ? logOut() : showLogin(); }}
              >
                {loggedIn ? "Abmelden" : "Anmeldung"}
              </a>
            </li>

            <li className="nav-item">
              <Link className="nav-link" to="/impressum">Impressum</Link>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  );
}
export default Navbar;
