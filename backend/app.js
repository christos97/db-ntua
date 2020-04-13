const express           =   require('express');
const bodyParser        =   require('body-parser');
const app               =   express();

const mysql = require('mysql')
const dbConfig = require ('./config/dbConfig')

const pool = mysql.createPool(dbConfig.pool_bundle)

pool.getConnection ( (err,conn) => {
    if (err) 
        throw err;
    else
        console.log("Connection thread id: ", conn.threadId)  
})

app.use(bodyParser.urlencoded({extended:false}));
app.use(bodyParser.json({limit : Infinity}));






// Catch all non handled api calls
app.use((req,res,)=>{
    res.status(400).json({
            "error 400": "Bad request",
            "message" : "Should be wrong url"

    })
});

module.exports = app;