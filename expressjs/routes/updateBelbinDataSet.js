const express = require("express");
const jwt = require("jsonwebtoken");
const router = express.Router();
const pool = require("../pool");

router.post('/', (req, res) => {  
    let roles = req.body;
    const token = req.headers.token;

    jwt.verify(token, process.env.ACCESS_TOKEN_SECRET, (error, decoded) => {
        if (error) return res.status(401).json({msg: "unauthorized"})

        // token valid

        const sql = 'UPDATE user_data_set SET belbin_first_role = ?, belbin_second_role = ? WHERE userId = ?'

        pool.getConnection((err, connection) => {     
            connection.query(sql, [ roles.belbin_first_role, roles.belbin_second_role, decoded.id ], function(err, results) {
                if (err) console.log(err)

                connection.release();
                return res.json({ msg: "totu ok" });
            });                       
        });
    });   
});

module.exports = router;