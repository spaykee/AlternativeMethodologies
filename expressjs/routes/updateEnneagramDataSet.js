const express = require("express");
const jwt = require("jsonwebtoken");
const router = express.Router();
const pool = require("../pool");

router.post('/', (req, res) => {  
    let roles = req.body;
    const token = req.headers.token;

    console.log(roles);

    jwt.verify(token, process.env.ACCESS_TOKEN_SECRET, (error, decoded) => {
        if (error) return res.json({msg: "unauthorized"})

        // token valid

        const sql = 'UPDATE user_data_set SET enneagram_first_role = ?, enneagram_second_role = ?, enneagram_third_role = ? WHERE userId = ?'

        pool.getConnection((err, connection) => {     
            connection.query(sql, [ roles.enneagram_first_role, roles.enneagram_second_role, roles.enneagram_third_role, decoded.id ], function(err, results) {
                if (err) console.log(err)

                connection.query('SELECT `id`, `name` from enneagram WHERE id IN (?)', [[ roles.enneagram_first_role, roles.enneagram_second_role, roles.enneagram_third_role ]], function(err, results) {
                    if (err) console.log(err)

                    connection.release();
                    console.log(results);
                    return res.json({ 
                        enneagram_first_role: results[0].name, 
                        enneagram_second_role: typeof(results[1]) !== 'undefined' ? results[1].name : 'undefined',
                        enneagram_third_role: typeof(results[2]) !== 'undefined' ? results[2].name : 'undefined'
                    });
                });

                
            });                       
        });
    });   
});

module.exports = router;