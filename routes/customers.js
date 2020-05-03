const express       = require("express");
const router        = express.Router();
var db = require('../db');

// All customers and info table
router.get('/', (req,res) => {
    let sql = 'SELECT * FROM CustomerAddress JOIN Customer ON Customer.Card=CustomerAddress.Card'    
    db.query(sql, (err,result) => {
        if (err) throw err;
        res.render('customers/index', { customers : result })
    })
})

// Customer Profile / All transactions
router.get('/:card_id', (req, res) => {
    let card = req.params.card_id
    let sql1 = 'SELECT * FROM CustomerAddress JOIN Customer ON Customer.Card=CustomerAddress.Card  WHERE Customer.Card=?'
    let sql2 = 'SELECT Transaction.Card, Transaction.Date_time, Transaction.Total_piecies, Transaction.Total_amount, Transaction.Payment_method, StoreAddress.Street, StoreAddress.Number_ FROM Transaction JOIN StoreAddress ON StoreAddress.Store_id=Transaction.Store_id WHERE Transaction.Card=?'
    db.query(sql1,[card], (err1,rs1) => {
        if (err1) 
            res.status(500).send(err1);
        db.query(sql2,[card], (err2, rs2) => {
            if (err2) 
                res.status(500).send(err2);
            res.render('customers/customerProfile', { 
                customer: rs1,
                transactions: rs2 
            })
        })
    })
})

// Transactions per customer (for ajax calls with parameters)
router.post('/transactions',(req, res) => {
    let hd = req.headers.referer,      // Catch incoming request's url (http://localhost:3000/customers/:card_id) to get :card_id (eg: '2') and parseInt 
        min_price = req.body.min_price,
        max_price = req.body.max_price,
        min_pieces = req.body.min_pieces,
        max_pieces = req.body.max_pieces,
        payment_method = req.body.payment_method
    
    let id = hd.split('/')
    let card= id[4]
    console.log(card)
    let sql = 'SELECT Transaction.Date_time, Transaction.Total_piecies, Transaction.Total_amount, Transaction.Payment_method, StoreAddress.Street, StoreAddress.Number_ FROM Transaction JOIN StoreAddress ON StoreAddress.Store_id=Transaction.Store_id WHERE Transaction.Card=? AND Total_amount>=? AND Total_amount<=? AND Total_piecies>=? AND Total_piecies<=? AND Payment_method=?'
    db.query(sql, [parseInt(card), parseFloat(min_price),parseFloat(max_price),parseInt(min_pieces),parseInt(max_pieces),payment_method], (err,result) => {
        if (err) 
            res.status(500).send()
        if (result.length > 0)
            res.status(200).send(result)
        else    
            res.status(404).send()
    })
 })

module.exports = router;