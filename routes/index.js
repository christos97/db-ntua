const 
    router = require('express').Router(),
    mysql = require('mysql'),
    config = require ('../config/dbConfig'),
    read = require('line-reader'),
    Sequelize = require('sequelize')

// Create Database with a dummy connection
router.get('/', (req, res, next) => {
    let temp_conn  = mysql.createConnection(config.pool_bundle);
    temp_conn.connect ( (err) => {
        if (err) throw err
        temp_conn.query("DROP DATABASE IF EXISTS db_ntua;", (err, result) => {
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
    const sequelize = new Sequelize('db_ntua', 'root', 'Skatakia1234#', {dialect: 'mysql' ,host: 'localhost' })

    const insert_data = () => {
        
        read.eachLine('./ddl/inserts.sql', (insert_into) => {
            db.query(insert_into, (err, res)=> {
                if (err) throw err
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
                })
                trigger=''
            }
        })
        insert_data()
    }
    
    const create_tables = () => {
        let i=1;
        read.eachLine('./ddl/migration.sql', (create_table) => {
            db.query(create_table, (err, result)=> {
                if (err) throw err
                    if (++i>12)
                        create_triggers()
            })
        })
    }
    
    

    // Build Database
    create_tables()
    //setTimeout(create_triggers,20000)
    //setTimeout(insert_data,25000)
    
    
    res.redirect('/load')
})

module.exports = router;