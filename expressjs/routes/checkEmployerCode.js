const express = require("express");
const router = express.Router();
const pool = require("../pool");

router.post('/', (req, res) => {  
    pool.getConnection((err, connection) => { 
        const employerCode = req.body.code;

        connection.query(`SELECT * FROM user WHERE code = '${employerCode}' and role = 'EMPLOYER'`, (error, result) => {
            if (error) { 
                console.log(error); 
            } 

            res.json({ codeExists: result.length !== 0 });
            connection.release();    
        });    
    })
});

module.exports = router;