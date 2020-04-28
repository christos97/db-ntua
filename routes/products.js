var express = require('express');
var router = express.Router();
var db = require('../db');
var flash        = require('req-flash');
router.use(flash())

// Product Index ---> Crud button links & product datatable 
router.get('/', (req, res) => {
    let sql = 'SELECT Products.Barcode, Products.Price, Products.Name AS prod_name, Products.Brand_name, Category.Name AS categ_name FROM Products LEFT JOIN Category ON Category.Category_id=Products.Category_id'
    db.query(sql, (err, result) => {
        if (err) 
            console.log("query failed")
        console.log(result)
        res.render('products/index', { products: result})
    })
})

// Add Product
router.get('/addProduct', (req, res) => {
    res.render('products/addProduct')
})

router.post('/addProduct', (req, res, next) => {
    let barcode = req.body.barcode,     // sto antistoixo form, to antistoixo id einai meta apo tin #
        price = req.body.price,         // eg #barcode ,#price etc
        name = req.body.name,
        brand = req.body.brand,
        category_id = req.body.category_id   // auto einai int opote thelei kai to relation kanonika wste na vazeis string
    
    console.log(barcode,price,name,brand,category_id)
    let sql = 'INSERT INTO Products (Barcode,Price,Name,Brand_name,First_transaction,Category_id) VALUES (?,?,?,?,1,?)'
    db.query(sql,[barcode, price, name, brand, category_id], (err, result) => {
        if (err) 
            res.status(400).send()
        else
            res.status(200).send("Product added successfully")
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

    let sql = 'UPDATE Products SET Barcode=?, Price=?, Name=?, Brand_name=?, First_transaction=1, Category_id=? WHERE Barcode=?'
    db.query(sql,[barcode, parseFloat(price), name, brand, parseInt(category_id),initial_barcode], (err, result) => {
        if (err) 
            res.status(400).send()
        if (result)
            console.log(result.message)
            res.status(200).send('Product updated')
    })
})

// Delete Product
router.get('/deleteProduct', (req, res) => {
    let sql = 'SELECT Barcode,Name FROM Products'
    db.query(sql, (err, result) => {
        if (err) 
            console.log("query failed")
        res.render('products/deleteProduct', { products: result})
    })
})

router.post('/deleteProduct', (req, res) => {
    let barcode = req.body.barcode
    console.log(barcode)
    let sql = 'DELETE FROM Products WHERE Barcode=?'
    db.query(sql,[barcode], (err,result) => {
        if (err)
            res.status(400).send()
        if (result)
            res.status(200).send('Product deleted successfully')
    })
})



module.exports = router;