const express       = require("express");
const router        = express.Router();
var db = require('../db');

router.get('/', (req,res) => {
    let sql = 'SELECT * FROM CustomerAddress JOIN Customer ON Customer.Card=CustomerAddress.Card'    
    db.query(sql, (err,result) => {
        if (err) throw err;
        console.log(result)
        res.render('customers/index', { customers : result })
    })
})

// User Profile - Karta Stoixeiwn
router.get('/:card_id', (req, res) => {
    let card = req.params.card_id
    let sql = 'SELECT * FROM CustomerAddress JOIN Customer ON Customer.Card=CustomerAddress.Card WHERE Customer.Card=?'
    db.query(sql,[card], (err,result) => {
        if (err) throw err;
        console.log(result)
        res.render('customers/profile', { customer: result })
    })
})

module.exports = router;