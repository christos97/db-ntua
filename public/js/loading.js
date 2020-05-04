$(document).ready(function() { 
    
    const fetchLast = (timeout) => {
        window.setTimeout( () => {
            console.log("timeout")
            window.setInterval( () => {
                console.log("interval")
                axios.get('http://localhost:3000/api/database_up')
                    .then( (result) => {
                        console.log(result)
                        if(result.length > 0)
                            console.log(result.data)
                            window.location = 'http://localhost:3000/dashboard'
                            return
                    })
                    .catch((err) => {
                        console.log(err)
                    })
                }, 10000)
        },timeout)
    }
    
    fetchLast(5000)
});