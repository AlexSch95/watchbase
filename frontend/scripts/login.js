async function login() {
  try {
    const username = document.getElementById('loginUsername').value.trim();
    const password = document.getElementById('loginPassword').value;
    const response = await fetch('http://localhost:3000/api/users/login', {
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
    const {token} = await response.json();
    console.log(token);
    localStorage.setItem('jwttoken', token);
    window.location.href = "movies.html";

  } catch (error) {
    console.log('AAAAAAAAAA');
    console.error(error);
  }
}