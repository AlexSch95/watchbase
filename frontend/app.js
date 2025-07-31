document.addEventListener("DOMContentLoaded", () => {
  fetch("http://localhost:3000/api/movies")
    .then(response => response.json())
    .then(data => {
      renderMovies(data); // функция отрисовки карточек
    })
    .catch(error => {
      console.error("Fehler beim Laden der Filme:", error);
    });
});







//

function handleEmail() {
  const email = document.getElementById("emailInput").value.trim();
  const isValid = /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email);

  if (!isValid) {
    alert("Bitte geben Sie eine gültige E-Mail-Adresse ein.");
    return;
  }

  // Email übergang auf die nächste Seite
  window.location.href = "movies.html";
}
