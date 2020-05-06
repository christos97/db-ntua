const router      = require("express").Router();
const util = require('util')
const db = require('../db');

// All customers and info table
router.get('/', (req,res) => {
    let sql = 
    'SELECT * FROM CustomerAddress JOIN Customer ON Customer.Card=CustomerAddress.Card'    
    db.query(sql, (err,result) => {
        if (err) throw err;
        res.render('customers/index', { customers : result })
    })
})

// Customer Profile / All transactions
router.get('/:card_id', (req, res) => {
    let card = parseInt(req.params.card_id)
    let sql1 = 
    'SELECT * FROM CustomerAddress JOIN Customer ON Customer.Card=CustomerAddress.Card  WHERE Customer.Card=?'
    let sql2 = 
    'SELECT Transaction.Trans_id, Transaction.Card, Transaction.Date_time, Transaction.Total_piecies, Transaction.Total_amount, Transaction.Payment_method, StoreAddress.Street, StoreAddress.Number_ FROM Transaction JOIN StoreAddress ON StoreAddress.Store_id=Transaction.Store_id WHERE Transaction.Card=?'
    db.query(sql1,[card], (err, profile) => {
        if (err) 
            res.status(500).send(err);
        db.query(sql2,[card], (err, trans) => {
            if (err) 
                res.status(500).send(err);
            res.render('customers/customerProfile', { 
                customer: profile,                 // Card content
                transactions: trans                // Table content
            })
        })
    })
})

// Transactions per customer (for ajax calls with parameters)
router.post('/transactions',(req, res) => {

    const findTransactions = (sql, bind) => {
        db.query(sql, bind, (err, transactions) => {
            if (err) 
                res.status(500).send(err)    // Internal Server error
            if (transactions.length > 0)
                res.status(200).send(transactions)    // Ok
            else    
                res.status(404).send()    // Empty result return 404 not found
        })
    }
    
    let card = parseInt(((req.headers.referer).split('/'))[4]), // Catch incoming request's url (http://localhost:3000/customers/:card_id) to get :card_id (eg: '2') and parseInt 
        min_price = parseFloat(req.body.min_price),
        max_price = parseFloat(req.body.max_price),
        min_pieces = parseInt(req.body.min_pieces),
        max_pieces = parseInt(req.body.max_pieces),
        payment_method = req.body.payment_method

    if (payment_method === '') 
        payment_method = 'All'

    let sql = 
    'SELECT Transaction.Trans_id, Transaction.Date_time, Transaction.Total_piecies,' + 
    'Transaction.Total_amount, Transaction.Payment_method, StoreAddress.Street, StoreAddress.Number_ '+
    'FROM Transaction JOIN StoreAddress ON StoreAddress.Store_id=Transaction.Store_id '+
    'WHERE Transaction.Card=? AND Total_amount>=? AND Total_amount<=? AND Total_piecies>=? AND Total_piecies<=?'
    
    let bind = [card, min_price, max_price, min_pieces, max_pieces]
    
    if (payment_method === 'All')
        findTransactions(sql, bind)
    else{
        sql += ' AND Payment_method=?'
        bind.push(payment_method)
        findTransactions(sql, bind)
    }
 })

 router.get('/transactions/:trans_id', (req, res) => {
    
    // Product name (barcode), Category, Pieces per Product
    let referer = req.headers.referer,
        trans_id = parseInt(req.params.trans_id),
        sql = 
    'SELECT Transaction.Total_amount as total_amount,Transaction.Total_piecies as total_pieces,TransactionContainsProduct.Piecies as product_pieces, Products.Name as product_name, Products.Price as product_price, Category.Name as product_category ' +
    'FROM TransactionContainsProduct ' + 
    'JOIN Products ON TransactionContainsProduct.Barcode=Products.Barcode ' +
    'JOIN Category ON Products.Category_id=Category.Category_id ' +
    'JOIN Transaction ON Transaction.Trans_id=TransactionContainsProduct.Trans_id '+
    'WHERE TransactionContainsProduct.Trans_id=?'

    db.query(sql, [trans_id], (err, result) => {  
        if (err) 
            res.status(500).send()     // Internal Server error
        if (result.length > 0){    
            res.render('receipt', {     // Ok
                receipt: result,
                ref: referer
            }) 
        }else
            res.status(404).send()      // Empty result return 404 not found
    })
})

module.exports = router;