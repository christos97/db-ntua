const express       = require("express");
const router        = express.Router();
const app            = express()
var db = require('../db');



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

// genika des ta onomata twn charts kai ftiakse antistoixa GET endpoints me underscore


router.post('/transactions',(req, res) => {
    let min_price = req.body.min_price
    let max_price = req.body.max_price
    let sql = 'SELECT Products.Barcode, Products.Price, Products.Name AS prod_name, Category.Name AS categ_name FROM Products LEFT JOIN Category ON Category.Category_id=Products.Category_id WHERE Products.Price>=? AND Products.Price<=?'
    db.query(sql, [parseFloat(min_price),parseFloat(max_price)], (err,result) => {
        if (err) throw err
        console.log(result)
        res.status(200).send(result)
    })
 })

module.exports = router;

