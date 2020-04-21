var express = require('express');
var router = express.Router();
var db = require('../db');

router.get('/', (req, res) => {
    res.render('products/index')
})

router.get('/addProduct', (req, res) => {
    res.render('products/addProduct')
})
router.post('/addProduct', (req, res) => {
    let barcode = req.body.Barcode,
        price = req.body.price,
        name = req.body.name,
        brand = req.body.brand,
        first_trans = req.body.first_trans,
        category_id = req.body.category_id
    let sql = 'insert into Products(Barcode,Price,Name,Brand_name,First_transaction,Category_id) values(?,?,?,?,?,?)'
    db.query(sql,[barcode, price, name, brand, first_trans, category_id], (err, res) => {
        if (err) 
            res.status(400)
        else 
            res.redirect(200, 'products/addProduct')
    })
})

module.exports = router;