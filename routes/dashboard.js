var express = require('express');
var router = express.Router();
var db = require('../db');

router.get('/', (req, res, next) => {
    res.render('dashboard')
})




module.exports = router;