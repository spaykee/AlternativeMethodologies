const express = require("express");
const router = express.Router();
const pool = require("../pool");

router.post('/', (req, res) => {  
    pool.getConnection((err, connection) => { 
        const username = req.body.username

        let sql = `SELECT * FROM user WHERE username = '${username}'`

        connection.query(sql, (error, result) => {
            if (error) { 
                console.log(error); 
            } 

            res.json({ userExists: result.length !== 0 });
            connection.release();    
        });    
    })
});

module.exports = router;