const express       = require("express");
const router        = express.Router();
var db = require('../db');

router.get('/', (req,res) => {
    let sql = 'SELECT * FROM CustomerAddress JOIN Customer ON Customer.Card=CustomerAddress.Card'    
    db.query(sql, (err,result) => {
        if (err) throw err;
        console.log(result)
        res.render('customers/index', { customers : result })
    })
})

// User Profile - Karta Stoixeiwn
router.get('/:card_id', (req, res) => {
    let card = req.params.card_id
    let sql = 'SELECT * FROM CustomerAddress JOIN Customer ON Customer.Card=CustomerAddress.Card WHERE Customer.Card=?'
    db.query(sql,[card], (err,result) => {
        if (err) throw err;
        console.log(result)
        res.render('customers/profile', { customer: result })
    })
})

// Transactions
router.post('/transactions',(req, res) => {
    let min_price = req.body.min_price
    let max_price = req.body.max_price
    let sql = 'SELECT Products.Barcode, Products.Price, Products.Brand_name ,Products.Name AS prod_name, Category.Name AS categ_name FROM Products LEFT JOIN Category ON Category.Category_id=Products.Category_id WHERE Products.Price>=? AND Products.Price<=?'
    db.query(sql, [parseFloat(min_price),parseFloat(max_price)], (err,result) => {
        if (err) throw err
        console.log(result)
        res.status(200).send(result)
    })
 })


module.exports = router;