const form = document.querySelector('form');

form.addEventListener('submit', async event => {
    console.log("xd")
    const email = document.getElementById('email').value;
    const password = document.getElementById('pw').value;
    console.log(email,password)
    axios.post('http://localhost:3000/api/login',{email: email, password: password})
    .then((res) => {console.log(res)})
})

