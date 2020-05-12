var express = require('express');
var router = express.Router();
const { db, query, queryEmpty } = require('../db');

// Initial Products table render 
router.get('/', (req, res) => {
    let query = 'SELECT Products.Barcode, Products.Price, Products.Name AS prod_name, Products.Brand_name, Category.Name AS categ_name FROM Products LEFT JOIN Category ON Category.Category_id=Products.Category_id'
    db.query(query, (err, result) => {
        if (err) throw err
        res.render('products/index', { products: result })
    })
})
// Update products table
router.get('/update_products_table', (req, res) => {
    query(
        'SELECT Products.Barcode, Products.Price, Products.Name AS prod_name, Products.Brand_name, '+
        'Category.Name AS categ_name FROM Products LEFT JOIN Category '+
        'ON Category.Category_id=Products.Category_id',
        null, res
        )
})

// CRUD product
router.post('/addProduct', (req, res, next) => {
    queryEmpty(
        'INSERT INTO Products (Barcode,Price,Name,Brand_name, Store_label,Category_id) VALUES (?,?,?,?,0,?)', [
            req.body.barcode, parseFloat(req.body.price), req.body.name, 
            req.body.brand, parseInt(req.body.category_id)
        ], res
    )
})
router.post('/editProduct',(req, res, next) => {
    queryEmpty(
        'UPDATE Products SET Price=?, Name=?, Brand_name=?, Category_id=? WHERE Barcode=?',[
            parseFloat(req.body.price),
            req.body.name,  
            req.body.brand, 
            parseInt(req.body.category_id), 
            req.body.barcode
        ], res
    )
})
router.post('/deleteProduct', (req, res) =>
    queryEmpty('DELETE FROM Products WHERE Barcode=?', [req.body.barcode], res))

module.exports = router;