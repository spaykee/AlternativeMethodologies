const express = require("express");
const router = express.Router();
const pool = require("../pool");

router.post('/', (req, res) => {  
    pool.getConnection((err, connection) => { 
        const zodiacId = req.body.id;

        console.log(zodiacId);

        let sql = `SELECT * FROM zodiac_ascendant WHERE zodiac = '${zodiacId}'`

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