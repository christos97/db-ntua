var mysql = require('mysql');
var config = require ('./config/dbConfig')

var db  = mysql.createConnection(config.pool_bundle);

module.exports = db;

