const express           =   require('express');
const bodyParser        =   require('body-parser');
const app               =   express();

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