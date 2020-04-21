//const axios = require('axios')
const form = document.querySelector('form');
var xhttp = new XMLHttpRequest();

form.addEventListener('submit', async event => {
    const email = document.getElementById('email').value;
    const password = document.getElementById('pw').value;
    console.log(email,password)
})