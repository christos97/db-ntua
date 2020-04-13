var mysql = require('mysql');
var config = require ('./config/dbConfig')

var pool  = mysql.createPool(config.pool_bundle);

module.exports = pool;
