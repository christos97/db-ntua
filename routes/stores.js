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
        sql2 = 'SELECT Transaction.Trans_id, Transaction.Card, Transaction.Date_time, Transaction.Total_piecies, Transaction.Total_amount, Transaction.Payment_method,Transaction.Store_id ,Customer.Card, Customer.Name FROM Transaction JOIN Customer ON Customer.Card=Transaction.Card WHERE Transaction.Store_id=?',
        sql3 = 'SELECT TransactionContainsProduct.Piecies as pieces, Products.Name as product, Category.Name as category from TransactionContainsProduct JOIN Products ON TransactionContainsProduct.Barcode=Products.Barcode JOIN Category ON Products.Category_id=Category.Category_id'

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
            console.log(result)         
            res.render('receipt', {     // Ok
                receipt: result,
                ref: referer
            }) 
        }else
            res.status(404).send()      // Empty result return 404 not found
    })


})

router.post('/transactions', (req, res) => {

    const findTransactions = (sql, search) => {
        db.query(sql, search, (err,result) => {  
            if (err) 
                res.status(500).send()     // Internal Server error
            if (result.length > 0)          
                res.status(200).send(result) // Ok
            else
                res.status(404).send()      // Empty result return 404 not found
        })
    }
    
    let store_id = parseInt(((req.headers.referer).split('/'))[4]),
        min_price = parseFloat(req.body.min_price),
        max_price = parseFloat(req.body.max_price),
        min_pieces = parseInt(req.body.min_pieces),
        max_pieces = parseInt(req.body.max_pieces),
        payment_method = req.body.payment_method

    if (payment_method === '') payment_method = 'All'
        
    if (payment_method === 'All'){
        let sql = 
        'SELECT Transaction.Trans_id, Transaction.Card, Transaction.Date_time, Transaction.Total_piecies, Transaction.Total_amount, Transaction.Payment_method, StoreAddress.Street, StoreAddress.Number_, Customer.Name, Customer.Card FROM Transaction JOIN StoreAddress ON StoreAddress.Store_id=Transaction.Store_id JOIN Customer ON Customer.Card=Transaction.Card WHERE Transaction.Store_id=? AND Total_amount>=? AND Total_amount<=? AND Total_piecies>=? AND Total_piecies<=?',
        search = [store_id, min_price, max_price, min_pieces, max_pieces]
        findTransactions(sql, search)
    }
    else{
        let sql = 'SELECT Transaction.Trans_id, Transaction.Card, Transaction.Date_time, Transaction.Total_piecies, Transaction.Total_amount, Transaction.Payment_method, StoreAddress.Street, StoreAddress.Number_, Customer.Name, Customer.Card FROM Transaction JOIN StoreAddress ON StoreAddress.Store_id=Transaction.Store_id JOIN Customer ON Customer.Card=Transaction.Card WHERE Transaction.Store_id=? AND Total_amount>=? AND Total_amount<=? AND Total_piecies>=? AND Total_piecies<=? AND Payment_method=?',
        search = [store_id, min_price, max_price, min_pieces, max_pieces, payment_method]
        findTransactions(sql, search)
    }
})
module.exports = router