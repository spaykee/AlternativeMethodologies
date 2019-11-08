const express = require("express");
const router = express.Router();
const pool = require("../pool");

router.post('/', (req, res) => {  
    const dataSet = req.body;

    pool.getConnection((err, connection) => { 
        let sql = 'INSERT INTO user_data_set SET ?'

        connection.query(sql, dataSet, (error, result) => {
            if (error) { 
                console.log(error); 
            } 
            res.json(result);
            connection.release();    
        });    
    })
});

module.exports = router;