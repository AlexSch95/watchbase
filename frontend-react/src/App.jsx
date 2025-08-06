import { useState, useEffect } from 'react'
import Navbar from "./components/Navbar";
import Movies from "./components/Movies";

function App() {
  const [movies, setMovies] = useState([]);

  useEffect(() => {
    async function getMovies() {
      try {
        const response = await fetch("http://localhost:3000/api/movies");
        if (!response.ok) {
          throw new Error(`HTTP Error: ${response.status}`);
        }
        const moviesFromApi = await response.json();
        setMovies(moviesFromApi);
        console.log("Filme geladen", moviesFromApi);
      } catch (error) {
        console.log("Fehler beim Laden", error);
      }
    }
    getMovies();
  }, [])

  return (
    <>
      <Navbar/>
      <Movies movies={movies}/>
    </>
  );
}

export default App;
