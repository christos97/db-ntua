var express = require('express');
var router = express.Router();
var db = require('../db');

/* GET home page.  --->   Login */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Bad Analytics' });
});

router.post('/', (req, res, next) => {
      let email =req.body.email
      let password = req.body.password
      let sql = 'select * from admins where email=?'; 
      db.query(sql, [email], (err, result) => {
          if (err) throw err;
          if (result[0].password === password)     
            res.redirect('dashboard')
          else 
            res.redirect('/')
      })
  } )

module.exports = router;
