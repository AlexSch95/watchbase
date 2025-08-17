import { useState } from "react";

function LoginModal({ hideLogin, setLoggedIn, showRegister }) {
  function dontHide(event) {
    event.stopPropagation();
  }
  const [loginUserName, setLoginUserName] = useState("");
  const [loginPassword, setLoginPassword] = useState("");

  function switchModal() {
    showRegister();
    hideLogin();
  }

  async function login(event) {
    event.preventDefault();
    try {
      const response = await fetch("http://localhost:3000/api/users/login", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          username: loginUserName,
          password: loginPassword,
        }),
      });
      if (!response.ok) {
        throw new Error(`HTTP Error: ${response.status}`);
      }
      const { token } = await response.json();
      console.log(token);
      localStorage.setItem("jwttoken", token);
      setLoggedIn(true);
      hideLogin();
    } catch (error) {
      console.error(error);
    }
  }

  return (
    <div className="overlay modal-overlay" onClick={hideLogin}>
      <div className="login-card" onClick={dontHide}>
        <div className="d-flex">
          <h3
            className="modal-title mb-4 profile-name-card"
            id="loginModalLabel">
            Anmeldung
          </h3>
          <button
            type="button"
            className="btn-close btn-close-white ms-auto"
            data-bs-dismiss="modal"
            aria-label="Schließen"
            onClick={hideLogin}></button>
        </div>
        <form
          id="loginForm"
          className="form-signin"
          onSubmit={(e) => login(e)}>
          <input
            id="loginUsername"
            className="form-control"
            type="text"
            required
            placeholder="Username"
            autoFocus
            onChange={(event) => setLoginUserName(event.target.value)}
          />
          <input
            id="loginPassword"
            className="form-control"
            type="password"
            required
            placeholder="Passwort"
            onChange={(event) => setLoginPassword(event.target.value)}
          />
          <button className="btn btn-danger" type="submit">
            Anmelden
          </button>
        </form>
        <a className="register" href="#" onClick={switchModal}>
          Noch kein Konto? Klicke hier...
        </a>
      </div>
    </div>
  );
}

export default LoginModal;
