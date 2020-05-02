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

module.exports = router