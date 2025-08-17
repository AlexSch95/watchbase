import logo from "./images/watchbasev2.png";
import { useNavigate } from 'react-router-dom';

function Navbar({ showLogin, loggedIn, logOut }) {
  const navigate = useNavigate();
  return (
    <nav className="navbar navbar-expand-sm navbar-dark px-4">
      <div className="container-fluid">
        <a className="navbar-brand" onClick={() => navigate('/')}>
          <img className="img-navbar" src={logo} alt="" />
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
              <a className="nav-link d-inline-block" onClick={() => navigate('/')}>
                Home
              </a>
            </li>
            <li className="nav-item">
              <a className="nav-link d-inline-block" onClick={() => navigate('/impressum')}>
                Impressum
              </a>
            </li>
            <li className="nav-item">
              <a
                className="nav-link d-inline-block"
                onClick={() => navigate('/movies')}
              >
                Filme
              </a>
            </li>
            {loggedIn &&
              <li className="nav-item">
                <a
                  className="nav-link d-inline-block"
                  onClick={() => navigate('/watchlist')}
                >
                  Watchlist
                </a>
              </li>
            }
            <li className="nav-item">
              <a
                className="nav-link d-inline-block"
                onClick={loggedIn ? logOut : showLogin}>
                {loggedIn ? "Abmelden" : "Anmeldung"}
              </a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  );
}

export default Navbar;
