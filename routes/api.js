const router = require('express').Router()
const db = require('../db')

const select = (sql, res) => {
    db.query(sql, (err, result) => {
        if (err) throw err;
        if (result.length > 0){
            res.status(200).send(result)
        }
        else 
            res.status(404).send()
   });
}

// Check database ready
router.get('/database_up', (err, res) => select('select * from TransactionContainsProduct where Trans_id=240', res))

const views = [
    'select * from Frequently_bought_together',
    'select * from Top_selling_spots',
    'select * from Prefered_products_per_category',
    'select * from Most_profitable_hours',
    'select * from Most_visited_hours_per_age_pracket'
]

// Dashboard Charts (Display MySQL stored views in Charts)
router.get('/freq_bought_together',(req, res) => select(views[0], res))
router.get('/top_selling_spots',(req, res) => select(views[1], res))
router.get('/prefered_products_per_category',(req, res) => select(views[2], res))
router.get('/most_profitable_hours',(req, res) => select(views[3], res))
router.get('/most_visited_hours_per_age_bracket',(req, res) => select(views[4], res))

module.exports = router;