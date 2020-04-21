window.axios = require('axios')
const form = document.querySelector('form');
var xhttp = new XMLHttpRequest();

form.addEventListener('submit', async event => {
    const email = document.getElementById('email').value;
    const password = document.getElementById('pw').value;
    console.log(email,password)
    axios.post('api/login',{email: email, password: password})
    .then((res) => {console.log(res)})
})

