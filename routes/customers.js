const router = require("express").Router();
const db = require('../db');

// All customers and info table
router.get('/', (req,res) => {
    let sql = 'SELECT * FROM CustomerAddress as ca JOIN Customer as c ON c.Card=ca.Card'    
    db.query(sql, (err,result) => {
        if (err) throw err;
        res.render('customers/index', { customers : result })
    })
})

// Customer Profile / All transactions
router.get('/:card_id', (req, res) => {
    let card = parseInt(req.params.card_id)
    let sql1 = 'SELECT * FROM CustomerAddress as ca JOIN Customer as c ON c.Card=ca.Card  WHERE c.Card=?'
    let sql2 = 
    'SELECT t.Trans_id, t.Card, t.Date_time, t.Total_piecies, t.Total_amount, t.Payment_method, sa.Street, sa.Number_ ' +
    'FROM Transaction as t JOIN StoreAddress as sa ON sa.Store_id=t.Store_id WHERE t.Card=?'
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

const exec = (sql, bind, res) => {
    db.query(sql, bind, (err, transactions) => {
        if (err) 
            res.status(500).send(err)    // Internal Server error
        if (transactions.length > 0){
            res.status(200).send(transactions)
            }    // Ok
        else    
            res.status(404).send()    // Empty result return 404 not found
    })
}
// Transactions per customer (for ajax calls with parameters)
router.post('/transactions',(req, res) => {

    let card = parseInt(((req.headers.referer).split('/'))[4]), // Catch incoming request's url (http://localhost:3000/customers/:card_id) to get :card_id (eg: '2') and parseInt 
        min_price = parseFloat(req.body.min_price),
        max_price = parseFloat(req.body.max_price),
        min_pieces = parseFloat(req.body.min_pieces),
        max_pieces = parseFloat(req.body.max_pieces),
        payment_method = req.body.payment_method

    if (payment_method === '') 
        payment_method = 'All'
    
    let sql = 
    'SELECT t.Trans_id, t.Date_time, t.Total_piecies,' + 
    't.Total_amount, t.Payment_method, sa.Street, sa.Number_ '+
    'FROM Transaction as t JOIN StoreAddress as sa ON sa.Store_id=t.Store_id '+
    'WHERE t.Card=? AND Total_amount>=? AND Total_amount<=? AND Total_piecies>=? AND Total_piecies<=?'
    
    let bind = [card, min_price, max_price, min_pieces, max_pieces]
    
    if (payment_method === 'All')
        exec(sql, bind, res)
    else{
        sql += ' AND Payment_method=?'
        bind.push(payment_method)
        exec(sql, bind, res)
    }
 })

 router.get('/transactions/:trans_id', (req, res) =>     
    exec(
        'SELECT t.Total_amount as total_amount,t.Total_piecies as total_pieces, tcp.Piecies as product_pieces,'+
        'p.Name as product_name, p.Price as product_price, c.Name as product_category ' +
        'FROM TransactionContainsProduct as tcp ' + 
        'JOIN Products as p ON tcp.Barcode=p.Barcode ' +
        'JOIN Category as c ON p.Category_id=c.Category_id ' +
        'JOIN Transaction as t ON t.Trans_id=tcp.Trans_id '+
        'WHERE tcp.Trans_id=?',
        parseInt(req.params.trans_id),
        res
    )
)

module.exports = router;