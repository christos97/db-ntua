const express       = require("express");
const router        = express.Router();
var db = require('../db');

router.get('/', (req,res) => {
    let sql = "SELECT * FROM Customer"
    db.query(sql, (err,result) => {
        if (err) throw err;
        res.render('customers/index', { customers : result })
    })
})

module.exports = router;