var express = require('express');
var router = express.Router();
var db = require('../db');


// ola mazi 
router.get('/', (req, res) => {       // Select store 
    let sql = 'SELECT * FROM StoreAddress JOIN Stores ON Stores.Store_id=StoreAddress.Store_id'    
    db.query(sql, (err, result) => {
        if (err) throw err
        console.log(result)
        res.render('stores/index', {stores: result})
    })
})

// An thes na ta giriseis ena ena ...

router.get('/:store_id', (req, res) => {
    let store_id = req.params.store_id
    let sql1 = 'SELECT * FROM StoreAddress JOIN Stores ON Stores.Store_id=StoreAddress.Store_id  WHERE Stores.Store_id=?'
    let sql2 = 'SELECT Transaction.Card, Transaction.Date_time, Transaction.Total_piecies, Transaction.Total_amount, Transaction.Payment_method,Transaction.Store_id ,Customer.Card, Customer.Name FROM Transaction JOIN Customer ON Customer.Card=Transaction.Card WHERE Transaction.Store_id=?'
    db.query(sql1,[parseInt(store_id)], (err,rs1) => {
        if (err) throw err;
        console.log('rs1',rs1)
        db.query(sql2,[parseInt(store_id)], (err, rs2) => {
            if (err) throw err;
            console.log('rs2',rs2)
            res.render('stores/storeProfile', { 
                store: rs1,
                transactions: rs2 
            })
        })
    })
})
router.post('/transactions',(req, res) => {
    let hd = req.headers.referer,
        min_price = req.body.min_price,
        max_price = req.body.max_price,
        min_pieces = req.body.min_pieces,
        max_pieces = req.body.max_pieces,
        payment_method = req.body.payment_method

    let id = hd.split('/')
    let store_id= id[4]

    let sql = 'SELECT Transaction.Card, Transaction.Date_time, Transaction.Total_piecies, Transaction.Total_amount, Transaction.Payment_method, StoreAddress.Street, StoreAddress.Number_, Customer.Name, Customer.Card FROM Transaction JOIN StoreAddress ON StoreAddress.Store_id=Transaction.Store_id JOIN Customer ON Customer.Card=Transaction.Card WHERE Transaction.Store_id=? AND Total_amount>=? AND Total_amount<=? AND Total_piecies>=? AND Total_piecies<=? AND Payment_method=?'
    db.query(sql, [parseInt(store_id), parseFloat(min_price),parseFloat(max_price),parseInt(min_pieces),parseInt(max_pieces),payment_method], (err,result) => {
        if (err) 
            res.status(500).send()
        if (result.length > 0)
            res.status(200).send(result)
        else
            res.status(404).send("Not Found")
    })
    
})
module.exports = router