const router = require('express').Router()
const db = require('../db')

const select = (sql, res) => {
    db.query(sql, (err, result) => {
        if (err) throw err;
        if (result.length > 0){
            res.status(200).send(result)
        }
        else 
            res.status(404).send()
   });
}

const getTransactionInvoice = (sql, bind , res) => {
    db.query(sql, [bind], (err,result) => {  
        if (err) 
            res.status(500).send()     // Internal Server error
        if (result.length > 0)          
            res.status(200).send(result) // Ok
        else
            res.status(404).send()      // Empty result return 404 not found
    })
}


// Check database ready
router.get('/database_up', (err, res) => select("select * from information_schema.VIEWS where DEFINER='root@localhost' AND TABLE_NAME=Most_visited_hours_per_age_pracket;", res))

// Transactions endpoint (Invoices)
router.get('/transactions/:trans_id', (req, res) => 
    getTransactionInvoice 
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

// Dashboard Charts (Display MySQL stored views in Charts)
const views = [
    'select * from Frequently_bought_together',
    'select * from Top_selling_spots',
    'select * from Prefered_products_per_category',
    'select * from Most_profitable_hours',
    'select * from Most_visited_hours_per_age_pracket'
];
router.get('/freq_bought_together',(req, res) => select(views[0], res))
router.get('/top_selling_spots',(req, res) => select(views[1], res))
router.get('/prefered_products_per_category',(req, res) => select(views[2], res))
router.get('/most_profitable_hours',(req, res) => select(views[3], res))
router.get('/most_visited_hours_per_age_bracket',(req, res) => select(views[4], res))

module.exports = router;