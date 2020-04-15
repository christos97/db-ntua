const axios = require('axios')

const form = document.querySelector('form');
console.log("here")
form.addEventListener('submit', async event => {
    event.preventDefault();
  
    const email = document.getElementById('email');
    const password = document.getElementById('pw');
    console.log(email,password)
})