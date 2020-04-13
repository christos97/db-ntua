const http = require('http');
const app = require('./app');
var mysql = require('mysql');

var connection = mysql.createConnection({
    host     : 'localhost',
    user     : 'root',
    password : 'Skatakia1234#',
    database : 'db_ntua'
    });
    
connection.connect();


/*connection.query('SELECT * FROM products', (err, res ) => {
    if (err) throw error;
    console.log('Product name is: ', res[0].name);
});
*/

let server =http.createServer(app).listen(3000  , () => {
    console.log('Server is running')
});