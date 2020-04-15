const express       = require("express");
const router        = express.Router();
const app            = express()
const jwt           = require('jsonwebtoken');

router.post('/login', (req,res) => {
    let email =req.body.email
    let password = req.body.password
    let sql = 'select * from admins where email=? AND password=?'; 
    db.query(sql, [email,password], (err, result) => {
        if (err) throw err;
        if(result.length == 0 ) {
            return res.status(401);
        }
        const token = jwt.sign(
            {
                email: result[0].email,
                id:    "admin"
            },
                'secret'
            )
            return res.status(200).json({token: token})
        })
    }) 

module.exports = router;

