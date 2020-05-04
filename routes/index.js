const 
    router = require('express').Router(),
    mysql = require('mysql'),
    config = require ('../config/dbConfig'),
    read = require('line-reader'),
    Sequelize = require('sequelize')

// Create Database 
router.get('/', (req, res, next) => {
    let temp_conn  = mysql.createConnection(config.pool_bundle);
    temp_conn.connect ( (err) => {
        if (err) throw err
        temp_conn.query("DROP DATABASE IF EXISTS db_ntua;", (err, result) => {
            if (err) throw err;
        });
        temp_conn.query("CREATE DATABASE db_ntua;", (err, result) => {
            if (err) throw err;
            console.log("Database Ok");
            temp_conn.end()
        });
    })
    res.render('index')
})

router.get('/load', (req, res) => {
    res.render('load')
})

router.get('/init_db', (req, res) => {
   
    const db = require('../db')
    const sequelize = new Sequelize('db_ntua', 'root', 'Skatakia1234#', {dialect: 'mysql' ,host: 'localhost' })

    read.eachLine('./ddl/migration.sql', (create_table) => {
        db.query(create_table, (err, res)=> {
            if (err) throw err
        })
    });
    
    const create_triggers = () => {
        let trigger=''
        read.eachLine('./ddl/triggers.sql', (trigger_row) => {
            trigger= trigger.concat(trigger_row,' ')
            if (trigger_row === 'end') {
                sequelize.query(trigger, (err, res)=> {
                    if (err) throw err
                })
                trigger=''
            }
        })
    }

    setTimeout(create_triggers,60000)
    read.eachLine('./ddl/inserts.sql', (insert_into) => {
        db.query(insert_into, (err, res)=> {
            if (err) throw err
        })
    });
    res.redirect('/load')
})

module.exports = router;