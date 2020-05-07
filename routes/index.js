const 
    router = require('express').Router(),
    mysql = require('mysql'),
    config = require ('../config/dbConfig').conn_bundle,
    read = require('line-reader'),
    Sequelize = require('sequelize')

// Create Database db_ntua with a dummy connection to 'root@localhost' 

router.get('/', (req, res, next) => {
    let temp_conn  = mysql.createConnection({
        host     : config.host,
        user     : config.user,
        password : config.password
    });
 
    temp_conn.connect ( (err) => {
        if (err) throw err
        temp_conn.query("DROP DATABASE IF EXISTS db_ntua;", (err, result) => {
            console.log("Database db_ntua dropped")
            if (err) throw err;
        });
        temp_conn.query("CREATE DATABASE db_ntua;", (err, result) => {
            if (err) throw err;
            console.log("Database db_ntua Created");
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
    const sequelize = new Sequelize(config.database, config.user, config.password, {dialect: 'mysql' ,host: config.host })

    const insert_data = () => {
        
        read.eachLine('./ddl/inserts.sql', (insert_into) => {
            db.query(insert_into, (err, res)=> {
                if (err) throw err
                console.log(insert_into)
            })
        });
    }
    
    const create_triggers = () => {
        let trigger=''
        read.eachLine('./ddl/triggers.sql', (trigger_row) => {
            trigger= trigger.concat(trigger_row, ' ')
            if (trigger_row === 'end') {
                sequelize.query(trigger, (err, res)=> { 
                    if (err) throw err
                    console.log(trigger)      
                })
                trigger=''
            }
        })
    }
   
    const create_tables = () => {
        read.eachLine('./ddl/migration.sql', (create_table) => {
            db.query(create_table, (err, result)=> {
                if (err) throw err
                console.log(create_table)
            })
        })
    }

    // Build Database
    create_tables()
    setTimeout(create_triggers,4000)
    setTimeout(insert_data,6000)

    res.redirect('/load')
})

module.exports = router;