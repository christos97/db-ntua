const mysql = require('mysql');

// Actual connection
const db = mysql.createConnection({
    host : 'localhost',
    user : 'root',
    password : 'Skatakia1234#',
    database: 'db_ntua',
    
})
module.exports = db;

