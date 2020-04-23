const express       = require("express");
const router        = express.Router();
const app            = express()
var db = require('../db');

router.get('/products',( req, res, next) => {
   let sql = "SELECT * FROM Products"
   db.query(sql, (err,result) => {
       if (err) throw err
       console.log(result)
       res.status(200).send(result)
   })
})

module.exports = router;

