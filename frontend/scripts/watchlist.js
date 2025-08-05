async function getUserMovies() {
  try {
    const token = localStorage.getItem("jwttoken");
    const res = await fetch("http://localhost:3000/api/movies/user", {
    headers: {
    Authorization: `Bearer ${token}`,
    },
    });
    const data = await res.json();
    console.log(data);
  } catch (error) {
    console.error(error)
  }
}

getUserMovies();
