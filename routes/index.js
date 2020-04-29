var express = require('express');
var router = express.Router();

router.get('/', (req, res) => {
  res.redirect('/dashboard');
});

module.exports = router;
