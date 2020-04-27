var express = require('express');
var router = express.Router();
var db = require('../db');
var flash        = require('req-flash');
router.use(flash())

router.get('/', (req, res) => {
    res.render('products/index')
})

// ADD Product GET/POST
router.get('/addProduct', (req, res) => {
    res.render('products/addProduct')
})

router.post('/addProduct', (req, res, next) => {
    let barcode = req.body.barcode,     // sto antistoixo form, to antistoixo id einai meta apo tin #
        price = req.body.price,         // eg #barcode ,#price etc
        name = req.body.name,
        brand = req.body.brand,
        first_trans = req.body.first_transaction,
        category_id = req.body.category_id   // auto einai int opote thelei kai to relation kanonika wste na vazeis string
    
    console.log(barcode,price,name,brand,first_trans,category_id)
    let sql = 'INSERT INTO Products (Barcode,Price,Name,Brand_name,First_transaction,Category_id) VALUES (?,?,?,?,?,?)'
    db.query(sql,[barcode, price, name, brand, first_trans, category_id], (err, result) => {
        if (err) 
            console.log("query failed")
        else
            console.log("Product added") 
            res.redirect('/products/addProduct')
    })
})

// Edit Product

router.get('/editProduct', (req, res) => {
    let sql = 'SELECT Barcode,Name FROM Products'
    db.query(sql, (err, result) => {
        if (err) 
            console.log("query failed")
        res.render('products/editProduct', { products: result})
    })
})

router.post('/editProduct', (req, res, next) => {

    let barcode = req.body.barcode,     
        price = req.body.price,         
        name = req.body.name,
        brand = req.body.brand,
        category_id = req.body.category_id,   // auto einai int opote thelei kai to relation kanonika wste na vazeis string
        initial_barcode = req.body.initial_barcode

    console.log(barcode,price,name,brand,category_id)
    let sql = 'UPDATE Products SET Barcode=?, Price=?, Name=?, Brand_name=?, First_transaction=1, Category_id=? WHERE Barcode=?'
    db.query(sql,[barcode, parseFloat(price), name, brand, parseInt(category_id),initial_barcode], (err, result) => {
        if (err) 
            res.status(400).send()
        if (result)
            console.log(result)
            res.status(200).send('Product updated')
    })
    
})


module.exports = router;