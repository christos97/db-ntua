var express = require('express');
var router = express.Router();
var db = require('../db');

const exec = (query, bind, res) => {
    db.query(query,bind, (err, result) => {
        if (err) 
            res.status(500).send('500: Internal server error')
        else
            res.status(200).send('200: Ok')
    })
}

// Index
router.get('/', (req, res) => {
    let query = 'SELECT Products.Barcode, Products.Price, Products.Name AS prod_name, Products.Brand_name, Category.Name AS categ_name FROM Products LEFT JOIN Category ON Category.Category_id=Products.Category_id'
    db.query(query, (err, result) => {
        if (err) throw err
        res.render('products/index', { products: result })
    })
})

router.get('/addProduct', (req, res) => 
    res.render('products/addProduct'))

router.get('/editProduct', (req, res) => {
    db.query('SELECT Barcode,Name FROM Products', (err, result) => {
        if (err) throw err
        res.render('products/editProduct', { products: result })
    })
})

router.get('/deleteProduct', (req, res) => {
    db.query('SELECT Barcode,Name FROM Products', (err, result) => {
        if (err) throw err
        res.render('products/deleteProduct', { products: result })
    })
})
router.post('/addProduct', (req, res, next) => {
    let query = 'INSERT INTO Products (Barcode,Price,Name,Brand_name,First_transaction,Category_id) VALUES (?,?,?,?,1,?)'
    let bind = [
        req.body.barcode,
        parseFloat(req.body.price), 
        req.body.name, 
        req.body.brand,
        parseInt(req.body.category_id)
    ]
    exec(query, bind, res)
})

router.post('/editProduct',(req, res, next) => {
    let query = 'UPDATE Products SET Barcode=?, Price=?, Name=?, Brand_name=?, First_transaction=1, Category_id=? WHERE Barcode=?'
    let bind = [
        req.body.barcode, 
        parseFloat(req.body.price), 
        req.body.name, req.body.brand, 
        parseInt(req.body.category_id), 
        req.body.product
    ]
    exec(query, bind, res)
})

router.post('/deleteProduct', (req, res) => 
    exec('DELETE FROM Products WHERE Barcode=?', [req.body.barcode], res))

module.exports = router;