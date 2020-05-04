const 
    router = require('express').Router(),
    db = require('../db');

router.get('/', (req, res) => {       // Select store 
    let sql = 'SELECT * FROM StoreAddress JOIN Stores ON Stores.Store_id=StoreAddress.Store_id'    
    db.query(sql, (err, result) => {
        if (err) throw err
        console.log(result)
        res.render('stores/index', {stores: result})
    })
})

router.get('/:store_id', (req, res) => {
    let store_id = parseInt(req.params.store_id),
        sql1 = 'SELECT * FROM StoreAddress JOIN Stores ON Stores.Store_id=StoreAddress.Store_id  WHERE Stores.Store_id=?',
        sql2 = 'SELECT Transaction.Card, Transaction.Date_time, Transaction.Total_piecies, Transaction.Total_amount, Transaction.Payment_method,Transaction.Store_id ,Customer.Card, Customer.Name FROM Transaction JOIN Customer ON Customer.Card=Transaction.Card WHERE Transaction.Store_id=?'
    db.query(sql1,[store_id], (err,rs1) => {
        if (err) throw err;
        db.query(sql2, [store_id], (err, rs2) => {
            if (err) throw err;
            res.render('stores/storeProfile', { 
                store: rs1,
                transactions: rs2 
            })
        })
    })
})

router.post('/transactions', (req, res) => {
    let store_id = parseInt(((req.headers.referer).split('/'))[4]),
        min_price = parseFloat(req.body.min_price),
        max_price = parseFloat(req.body.max_price),
        min_pieces = parseInt(req.body.min_pieces),
        max_pieces = parseInt(req.body.max_pieces),
        payment_method = req.body.payment_method

    let sql = 'SELECT Transaction.Card, Transaction.Date_time, Transaction.Total_piecies, Transaction.Total_amount, Transaction.Payment_method, StoreAddress.Street, StoreAddress.Number_, Customer.Name, Customer.Card FROM Transaction JOIN StoreAddress ON StoreAddress.Store_id=Transaction.Store_id JOIN Customer ON Customer.Card=Transaction.Card WHERE Transaction.Store_id=? AND Total_amount>=? AND Total_amount<=? AND Total_piecies>=? AND Total_piecies<=? AND Payment_method=?',
        search = [store_id, min_price, max_price, min_pieces, max_pieces, payment_method]
    db.query(sql, search, (err,result) => {  
        if (err) 
            res.status(500).send()     // Internal Server error
        if (result.length > 0)          
            res.status(200).send(result) // Ok
        else
            res.status(404).send()      // Empty result return 404 not found
    })
})
module.exports = router