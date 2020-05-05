const mysql = require('mysql');
const config = require('./config/dbConfig')

// Actual connection
const db = mysql.createConnection(config.conn_bundle)
module.exports = db;

