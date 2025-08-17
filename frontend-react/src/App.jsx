import { useState, useEffect } from 'react'
import { Routes, Route } from "react-router-dom";
import Navbar from "./components/Navbar";
import Movies from "./Movies";
import LoginModal from "./components/LoginModal";
import RegisterModal from "./components/RegisterModal";
import Home from "./Home";
import Impressum from './Impressum';

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
  function logOut () {
    localStorage.removeItem("jwttoken");
    setLoggedIn(false);
  }

  const [loggedIn, setLoggedIn] = useState(false);

  useEffect(() => {
    async function checkloggedIn () {
      const token = localStorage.getItem("jwttoken");
      if (token) {
        try {
          const response = await fetch(
            "http://localhost:3000/api/user",
            {headers: {authorization: `Bearer ${token}`}}
          );
          if (!response.ok) {
            throw new Error("authorization failed");
          }
          setLoggedIn(true);
        } catch (err) {
          console.error(`Error: ${err}`);
          localStorage.removeItem("jwttoken");
        }
      }
    }
    checkloggedIn();
  }, [])

  // const [watchList, setWatchList] = useState(false);


  return (
    <>
      <Navbar
        showLogin={showLogin}
        loggedIn={loggedIn}
        logOut={logOut}
        // setWatchList={setWatchList}
      />
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/impressum" element={<Impressum />} />
        <Route path="/movies" element={
          <Movies
            loggedIn={loggedIn}
            watchList={false}
          />
        } />
        <Route path="/watchlist" element={
          <Movies
            loggedIn={loggedIn}
            watchList={true}
          />
        } />
      </Routes>
      {loginOpen &&
        <LoginModal
          hideLogin={hideLogin}
          setLoggedIn={setLoggedIn}
          showRegister={showRegister}
        />
      }
      {registerOpen &&
        <RegisterModal
          hideRegister={hideRegister}
          showLogin={showLogin}
        />
      }
    </>
  );
}

export default App;
