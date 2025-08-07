// import { useState, useEffect } from 'react'
import Navbar from "./components/Navbar";
import Movies from "./components/Movies";
import LoginModal from "./components/LoginModal";
import RegisterModal from "./components/RegisterModal";
import { useState } from "react";

function App() {
  const [loginOpen, setLoginOpen] = useState(false);
  const [registerOpen, setRegisterOpen] = useState(false)
  function hideLogin() {
    setLoginOpen(false);
  }
  function showLogin() {
    setLoginOpen(true);
  }
  function showRegister() {
    setRegisterOpen(true);
  }
  function hideRegister () {
    setRegisterOpen(false);
  }

  const [loggedIn, setLoggedIn] = useState(false);

  return (
    <>
      <Navbar showLogin={showLogin} />
      <Movies />
      {loginOpen && (
        <LoginModal hideLogin={hideLogin} setLoggedIn={setLoggedIn} showRegister={showRegister}/>
      )}
      {registerOpen && (
        <RegisterModal hideRegister={hideRegister} showLogin={showLogin} />
      )}
    </>
  );
}

export default App;
