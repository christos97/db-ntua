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
    let sql = 'SELECT * FROM CustomerAddress,Transaction JOIN Customer ON Customer.Card=CustomerAddress.Card JOIN Transaction ON   WHERE Customer.Card=?'
    db.query(sql,[card], (err,result) => {
        if (err) throw err;
        console.log(result)
        res.render('customers/profile', { customer: result })
    })
})

// Transactions
router.post('/transactions',(req, res) => {
    let card= req.body.card,
        min_price = req.body.min_price,
        max_price = req.body.max_price,
        min_pieces = req.body.min_pieces,
        max_pieces = req.body.max_pieces,
        payment_method = req.body.payment_method
    console.log(min_price, max_price, min_pieces,max_pieces)
    let sql = 'SELECT  Card, Date_time, Total_piecies, Total_amount, Payment_method FROM Transaction WHERE Card=? AND Total_amount>=? AND Total_amount<=? AND Total_piecies>=? AND Total_piecies<=? AND Payment_method=?'
    db.query(sql, [parseInt(card), parseFloat(min_price),parseFloat(max_price),parseInt(min_pieces),parseInt(max_pieces),payment_method], (err,result) => {
        if (err) throw err
        console.log(result)
        res.status(200).send(result)
    })
 })


module.exports = router;