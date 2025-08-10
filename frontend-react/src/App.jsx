import Navbar from "./components/Navbar";
import Movies from "./components/Movies";
import LoginModal from "./components/LoginModal";
import RegisterModal from "./components/RegisterModal";
import { useEffect, useState } from "react";

function App({ initialWatchlist = false }) {
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

  const [watchList, setWatchList] = useState(initialWatchlist);
    useEffect(() => {
    setWatchList(initialWatchlist);
  }, [initialWatchlist]);

  return (
    <>
      <Navbar
        showLogin={showLogin}
        loggedIn={loggedIn}
        logOut={logOut}
        setWatchList={setWatchList}
      />
      <Movies
        loggedIn={loggedIn}
        watchList={watchList}
      />
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
