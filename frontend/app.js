
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
