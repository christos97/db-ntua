const express       = require("express");
const router        = express.Router();
var db = require('../db');

// All customers and info table
router.get('/', (req,res) => {
    let sql = 'SELECT * FROM CustomerAddress JOIN Customer ON Customer.Card=CustomerAddress.Card'    
    db.query(sql, (err,result) => {
        if (err) throw err;
        console.log(result)
        res.render('customers/index', { customers : result })
    })
})

// Customer Profile / All transactions
router.get('/:card_id', (req, res) => {
    let card = req.params.card_id
    let sql1 = 'SELECT * FROM CustomerAddress JOIN Customer ON Customer.Card=CustomerAddress.Card  WHERE Customer.Card=?'
    let sql2 = 'SELECT Transaction.Card, Transaction.Date_time, Transaction.Total_piecies, Transaction.Total_amount, Transaction.Payment_method, StoreAddress.Street, StoreAddress.Number_ FROM Transaction JOIN StoreAddress ON StoreAddress.Store_id=Transaction.Store_id WHERE Transaction.Card=?'
    db.query(sql1,[card], (err,rs1) => {
        if (err) throw err;
        db.query(sql2,[card], (err, rs2) => {
            if (err) throw err;
            res.render('customers/customerProfile', { 
                customer: rs1,
                transactions: rs2 
            })
        })
    })
})

// Transactions per customer (for ajax calls with parameters)
router.post('/transactions',(req, res) => {
    let card= req.body.card,
        min_price = req.body.min_price,
        max_price = req.body.max_price,
        min_pieces = req.body.min_pieces,
        max_pieces = req.body.max_pieces,
        payment_method = req.body.payment_method
    console.log(min_price, max_price, min_pieces,max_pieces)
    let sql = 'SELECT Transaction.Card, Transaction.Date_time, Transaction.Total_piecies, Transaction.Total_amount, Transaction.Payment_method, StoreAddress.Street, StoreAddress.Number_ FROM Transaction JOIN StoreAddress ON StoreAddress.Store_id=Transaction.Store_id WHERE Transaction.Card=? AND Total_amount>=? AND Total_amount<=? AND Total_piecies>=? AND Total_piecies<=? AND Payment_method=?'
    db.query(sql, [parseInt(card), parseFloat(min_price),parseFloat(max_price),parseInt(min_pieces),parseInt(max_pieces),payment_method], (err,result) => {
        if (err) throw err
        console.log(result)
        res.status(200).send(result)
    })
 })

module.exports = router;