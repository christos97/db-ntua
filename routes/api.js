const express       = require("express");
const router        = express.Router();
const app            = express()
var db = require('../db');



/* 
    otidipote *meta* to 'http://localhost:3000/api' einai edw 
    Edw ola ta routes gia ta charts (GET), apla res.send(result) opou result to apotelesma tou query (result === json array)  
    Genika ta charts einai aneksartita twn user inputs, den proerxontai apo form ara kaneis catch oxi post alla get
*/


//Frequently Bought together 
router.get('freq_bought_together',( req, res, next) => {
   let sql = "SELECT * FROM Products" //?
   db.query(sql, (err,result) => {
       if (err) throw err
       //console.log(result)
       res.status(200).send(result)
   })
})

// omoiws ola ta ipoloipa /products/{another_chart_name}

module.exports = router;

