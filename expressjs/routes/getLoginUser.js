const express = require("express");
const jwt = require("jsonwebtoken");
const router = express.Router();
const pool = require("../pool");

router.get('/', (req, res) => {     
    const token = req.headers.token;

    console.log(token);

    jwt.verify(token, "baguvixmuiepsd", (error, decoded) => {
        if (error) return res.json({msg: "unauthorized"})

        // token valid
        const sql = `SELECT * FROM user WHERE id = '${decoded.id}'`

        pool.getConnection((err, connection) => { 
            connection.query(sql, (error2, result) => {
                if (error2) console.log(error2); 

                const {password, ...user} = result[0]

                res.json(user);
                connection.release();    
            });    
        });
    });   
});

module.exports = router;