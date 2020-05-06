const express       = require("express");
const router        = express.Router();
const app            = express()
var db = require('../db');

router.get('/database_up', (err, res) => {

   let sql = "SELECT * FROM TransactionContainsProduct WHERE Barcode='9986157468' AND Card=6" // ??
   
       db.query(sql, (err, result) => {
            if (err) throw err;
            if (result.length > 0){
                console.log(result)
                res.status(200).send(result)
            }
            else 
                res.status(404).send()
       });
})


//Frequently Bought together 
router.get('/freq_bought_together',(req, res) => {
   let sql = "SELECT * FROM Products" // ??
   db.query(sql, (err,result) => {
       if (err) throw err
       res.status(200).send(result)
   })
})


module.exports = router;

