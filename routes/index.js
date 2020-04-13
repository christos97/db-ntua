var express = require('express');
var router = express.Router();
var pool = require('../db');

/* GET home page. */
router.get('/', function(req, res, next) {

  pool.getConnection( (err, conn) => {
    conn.query('show databases', (err, result) => {
      console.log(result[0])
    })
    conn.release()
  })
  
  res.render('index', { title: 'Express' });
});

module.exports = router;
