const express = require("express");
const jwt = require("jsonwebtoken");
const router = express.Router();
const pool = require("../pool");

router.post('/', (req, res) => {  
    let roles = req.body;
    const token = req.headers.token;

    jwt.verify(token, process.env.ACCESS_TOKEN_SECRET, (error, decoded) => {
        if (error) return res.json({msg: "unauthorized"})

        // token valid

        const sql = 'UPDATE user_data_set SET belbin_first_role = ?, belbin_second_role = ? WHERE userId = ?'

        pool.getConnection((err, connection) => {     
            connection.query(sql, [ roles.belbin_first_role, roles.belbin_second_role, decoded.id ], function(err, results) {
                if (err) console.log(err)

                connection.query('SELECT `code`, `name` from belbin WHERE id IN (?)', [[ roles.belbin_first_role, roles.belbin_second_role ]], function(err, results) {
                    if (err) console.log(err)

                    connection.release();
                    console.log(results[0].name);
                    return res.json({ belbin_first_role: results[0].name, belbin_second_role: results[1] !== 'undefined' ? results[1].name : results[0].name });
                });

                
            });                       
        });
    });   
});

module.exports = router;