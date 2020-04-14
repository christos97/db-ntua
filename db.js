var mysql = require('mysql');
const util = require('util')
var config = require ('./config/dbConfig')

var db  = mysql.createConnection(config.pool_bundle);

db.query = util.promisify(db.query)


module.exports = db;

