$(document).ready(function() { 
    
    const wait = (timeout) => {
        window.setTimeout( () => {
            window.location = 'http://localhost:3000/dashboard'
        },timeout)
    }
    
    wait(180000) 
});