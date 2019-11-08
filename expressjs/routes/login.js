const express = require("express");
const bcrypt = require('bcrypt');
const jwt = require("jsonwebtoken");
const router = express.Router();
const pool = require("../pool");

const saltRounds = 10;

router.post('/', (req, res) => {  
    const username = req.body.username;
    const reQpassword = req.body.password;

    pool.getConnection((err, connection) => { 
        let sql = `SELECT * FROM user WHERE username = '${username}'`;

        connection.query(sql, (error, result) => {
            if (error) return res.status(500).json({ msg : error })

            const user = result[0];

            if (result.length === 0) {
                return res.json({ msg : "userError" });
            } else {
                const dbPass = user.password;

                bcrypt.compare(reQpassword, dbPass, function(eroare, isOK) {
                    if (eroare) return res.status(500).json({ msg : eroare })

                    if (!isOK) {
                        return res.json({ msg : "passError" })
                    } else {
                        // all good
                        let token = jwt.sign({ id: user.id}, process.env.ACCESS_TOKEN_SECRET, {expiresIn: '10s'});
                        return res.json({ msg: "loginSuccess", token: token })
                    }
                
                });
            }
            connection.release();    
        });    
    })
});

module.exports = router;