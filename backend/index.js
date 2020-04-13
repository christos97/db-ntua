const http = require('http')
const app = require('./app')


let server =http.createServer(app).listen(3000  , () => {
    console.log('Server is running')
});