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


/* 
    otidipote *meta* to 'http://localhost:3000/api' einai edw 
    Edw ola ta routes gia ta charts (GET), apla res.send(result) 
    opou result to apotelesma tou query (result === json array)  
    Genika ta charts einai aneksartita twn user inputs 
    opote kanoume apla to query kai fetch apo to front ta json
    kai ta vazoume sta charts 
*/


//Frequently Bought together 
router.get('/freq_bought_together',(req, res) => {
   let sql = "SELECT * FROM Products" // ??
   db.query(sql, (err,result) => {
       if (err) throw err
       //console.log(result)
       res.status(200).send(result)
   })
})


module.exports = router;

