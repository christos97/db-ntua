const router = require('express').Router(),
      db = require('../db');
    

// All stores info table
router.get('/', (req, res) => {       
    let sql = 'SELECT * FROM StoreAddress JOIN Stores ON Stores.Store_id=StoreAddress.Store_id'    
    db.query(sql, (err, result) => {
        if (err) throw err
        res.render('stores/index', {stores: result})
    })
})

// Store Profile
router.get('/:store_id', (req, res) => {
    let store_id = parseInt(req.params.store_id),
        sql1 = 'SELECT * FROM StoreAddress as sa JOIN Stores as s ON s.Store_id=sa.Store_id  WHERE s.Store_id=?',
        sql2 = 
        'SELECT t.Trans_id, t.Card, t.Date_time, t.Total_piecies, t.Total_amount, t.Payment_method,t.Store_id ,'+
        'c.Card, c.Name FROM Transaction as t JOIN Customer as c ON c.Card=t.Card ' +
        'WHERE t.Store_id=?'

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

const exec = (sql, search , res) => {
    db.query(sql, search, (err,result) => {  
        if (err) 
            res.status(500).send()     // Internal Server error
        if (result.length > 0)          
            res.status(200).send(result) // Ok
        else
            res.status(404).send()      // Empty result return 404 not found
    })
}

// Handles Transaction Table
router.post('/transactions', (req, res) => {
    
    let store_id = parseInt(((req.headers.referer).split('/'))[4]),
        min_price = parseFloat(req.body.min_price),
        max_price = parseFloat(req.body.max_price),
        min_pieces = parseFloat(req.body.min_pieces),
        max_pieces = parseFloat(req.body.max_pieces),
        payment_method = req.body.payment_method

    if (payment_method === '') payment_method = 'All'
        
    if (payment_method === 'All'){
        let sql = 
        'SELECT Transaction.Trans_id, Transaction.Card, Transaction.Date_time, Transaction.Total_piecies, Transaction.Total_amount, Transaction.Payment_method, StoreAddress.Street, StoreAddress.Number_, Customer.Name, Customer.Card FROM Transaction JOIN StoreAddress ON StoreAddress.Store_id=Transaction.Store_id JOIN Customer ON Customer.Card=Transaction.Card WHERE Transaction.Store_id=? AND Total_amount>=? AND Total_amount<=? AND Total_piecies>=? AND Total_piecies<=?',
        search = [store_id, min_price, max_price, min_pieces, max_pieces]
        exec(sql, search, res)
    }
    else{
        let sql = 'SELECT Transaction.Trans_id, Transaction.Card, Transaction.Date_time, Transaction.Total_piecies, Transaction.Total_amount, Transaction.Payment_method, StoreAddress.Street, StoreAddress.Number_, Customer.Name, Customer.Card FROM Transaction JOIN StoreAddress ON StoreAddress.Store_id=Transaction.Store_id JOIN Customer ON Customer.Card=Transaction.Card WHERE Transaction.Store_id=? AND Total_amount>=? AND Total_amount<=? AND Total_piecies>=? AND Total_piecies<=? AND Payment_method=?',
        search = [store_id, min_price, max_price, min_pieces, max_pieces, payment_method]
        exec(sql, search, res)
    }
})

// Handles Receipt Modal Table
router.get('/transactions/:trans_id', (req, res) => 
    exec 
    (   'SELECT t.Total_amount as total_amount,t.Total_piecies as total_pieces, '+
        'tcp.Piecies as product_pieces, p.Name as product_name, '+
        'p.Price as product_price, c.Name as product_category ' +
        'FROM TransactionContainsProduct as tcp ' + 
        'JOIN Products as p ON tcp.Barcode=p.Barcode ' +
        'JOIN Category as c ON p.Category_id=c.Category_id ' +
        'JOIN Transaction as t ON t.Trans_id=tcp.Trans_id '+
        'WHERE tcp.Trans_id=?',
        parseInt(req.params.trans_id), 
        res 
    )
)


module.exports = router