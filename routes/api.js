const express       = require("express");
const router        = express.Router();
const app            = express()
var db = require('../db');



// otidipote meta to "{base_url}/api" einai edw
/* 
Edw ola ta routes gia ta charts, apla res.send(result) opou result to apotelesma tou query (result === json array)  
*/

// Routes pou exoun na kanoun me Product charts genika tha einai sto "{base_url}/api/products" 
router.get('/products/freq_bought_together',( req, res, next) => {
   let sql = "SELECT * FROM Products"
   db.query(sql, (err,result) => {
       if (err) throw err
       //console.log(result)
       res.status(200).send(result)
   })
})

module.exports = router;

