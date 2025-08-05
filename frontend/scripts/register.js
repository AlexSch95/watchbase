async function register() {
  try {
    const username = document.getElementById('registerUsername').value.trim();
    const password = document.getElementById('registerPassword').value;
    const passwordConfirm = document.getElementById('registerPasswordConfirm').value;
    if (password !== passwordConfirm) {
      return console.log("Password mismatch");
    }
    const response = await fetch('http://localhost:3000/api/users/register', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({
        username: username,
        password: password
      })
    });
    if (!response.ok) {
      throw new Error(`HTTP Error: ${response.status}`);
    }
    window.location.href = "movies.html";
  } catch (error) {
    console.error(error);
  }
}

function checkEqual() {
    const password = document.getElementById('registerPassword');
    const passwordConfirm = document.getElementById('registerPasswordConfirm');
    if (password.value === passwordConfirm.value) {
      passwordConfirm.setCustomValidity('');
    } else {
      passwordConfirm.setCustomValidity('Passwörter stimmen nicht überein')
    }
}