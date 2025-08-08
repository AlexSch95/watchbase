// import { useState, useEffect } from 'react'
import Navbar from "./components/Navbar";
import Movies from "./Movies";
import LoginModal from "./components/LoginModal";
import RegisterModal from "./components/RegisterModal";
import { useEffect, useState } from "react";
import Home from "./Home";
import { Routes, Route } from "react-router-dom";

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
        <Route path="/home" element={<Home />} />
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
        {/* <Route path="/contact" element={<Contact />} /> */}
      </Routes>
      {/* <Movies
        loggedIn={loggedIn}
        watchList={watchList}
      /> */}
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
