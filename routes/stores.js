var express = require('express');
var router = express.Router();
var db = require('../db');


// ola mazi 
router.get('/', (req, res) => {       // Select store 
    let sql = 'SELECT * FROM StoreAddress '
    db.query(sql, (err, result) => {
        if (err) throw err
        console.log(result)
        res.render('stores/allStores', {stores: result})
    })
})

// An thes na ta giriseis ena ena ...
router.get('/:store_id', (req, res) => {    //
    let store_id = req.params.store_id
    let sql = 'SELECT * FROM StoreAddress WHERE Store_id=?'
    db.query(sql,[store_id], (err, result) => {
        if (err) throw err
        res.render('stores/store', {
            street: result[0].Street,
            number: result[0].Number_,
            postal_code : result[0].Postal_code,
            city : result[0].City
        })
    })
})

module.exports = router