const express = require("express");
const router = express.Router();
const pool = require("../pool");

router.get('/', (req, res) => {  
    pool.getConnection((err, connection) => { 
        let sql = 'SELECT * FROM zodiac'

        connection.query(sql, (error, result) => {
            if (error) { 
                console.log(error); 
            } 
            res.json(result);
            connection.release();    
        });    
    })
});

module.exports = router;