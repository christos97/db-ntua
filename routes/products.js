var express = require('express');
var router = express.Router();
var db = require('../db');

router.get('/', (req, res, next) => {
    res.render('products/index')
})

module.exports = router;