import { useEffect, useState, useRef } from "react";

function RegisterModal({ hideRegister, showLogin }) {
  function dontHide(event) {
    event.stopPropagation();
  }
  const [registerUserName, setRegisterUserName] = useState("");
  const [registerPassword, setRegisterPassword] = useState("");
  const [registerPasswordConfirm, setRegisterPasswordConfirm] = useState("");
  // const [passwordConfirmInput, setPasswordConfirmInput] = useState("");
  const confirmInput = useRef();

  const checkPasswordEqual = registerPassword === registerPasswordConfirm;
  console.log(checkPasswordEqual);

  useEffect(() => {
    function checkEqual() {
    if (checkPasswordEqual) {
      confirmInput.current.setCustomValidity("");
    } else {
      confirmInput.current.setCustomValidity(
        "Passwörter stimmen nicht überein"
      );
    }
  }
  checkEqual();
  }, [checkPasswordEqual])

  function switchModal() {
    showLogin();
    hideRegister();
  }

  async function register() {
    try {
      if (!checkPasswordEqual) {
        return console.log("Password mismatch");
      }
      const response = await fetch("http://localhost:3000/api/users/register", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          username: registerUserName,
          password: registerPassword,
        }),
      });
      if (!response.ok) {
        throw new Error(`HTTP Error: ${response.status}`);
      }
      hideRegister();
    } catch (error) {
      console.error(error);
    }
  }


  return (
    <div className="overlay modal-overlay" onClick={hideRegister}>
      <div className="login-card" onClick={dontHide}>
        <div className="d-flex">
          <h3
            className="modal-title mb-4 profile-name-card"
            id="registerModalLabel">
            Registrierung
          </h3>
          <button
            type="button"
            className="btn-close btn-close-white ms-auto"
            data-bs-dismiss="modal"
            aria-label="Schließen"
            onClick={hideRegister}></button>
        </div>
        <form
          id="registerForm"
          className="form-signin"
          onSubmit={(e) => register(e)}>
          <input
            id="registerUsername"
            className="form-control"
            type="text"
            required
            placeholder="Username"
            autoFocus
            onChange={(event) => setRegisterUserName(event.target.value)}
          />
          <input
            id="registerPassword"
            className="form-control"
            type="password"
            required
            placeholder="Passwort"
            onChange={(event) => setRegisterPassword(event.target.value)}
          />
          <input
            id="registerPasswordConfirm"
            className="form-control"
            type="password"
            required
            placeholder="Passwort wiederholen"
            onChange={(event) => setRegisterPasswordConfirm(event.target.value)}
            ref={confirmInput}
          />
          <button className="btn btn-danger" type="submit">
            Registrieren
          </button>
        </form>
        <a className="register" href="#" onClick={switchModal}>
          Konto bereits vorhanden? Klicke hier...
        </a>
      </div>
    </div>
  );
}

export default RegisterModal;
