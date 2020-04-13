const express           =   require('express');
const bodyParser        =   require('body-parser');
const app               =   express();

const mysql = require('mysql')
const dbConfig = require ('./config/dbConfig')

const pool = mysql.createPool(dbConfig.pool_bundle)

pool.getConnection ( (err,conn) => {      // kathe fora p kanw query pairnw ena connection apo to pool
    if (err) 
        throw err;
    else
        console.log("Connection thread id: ", conn.threadId)  // sto callback (err, conn) to 2o orisma einai pou kanei to query
        conn.query('show databases', (err, res) => {         //genika stin js ola ta kanoun ta callbacks epeidh einai async (promise resolved)
            console.log(res)  //  res -> json array genika
        })
        conn.release()       // nomizw to destroy tin vgazei teleiws apo to pool
        //conn.destroy()      
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