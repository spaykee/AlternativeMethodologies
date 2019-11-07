const express = require("express");
const bcrypt = require('bcrypt');
const router = express.Router();
const pool = require("../pool");

const saltRounds = 10;

const createDataSet = function(sql, connection) {
    connection.query(sql, user, (error, result) => {
        if (error) { 
            console.log(error); 
        } 
        res.json(result);

        connection.query(`SELECT * FROM user WHERE code = ${employerCode}`, (error, result) => {})

        connection.release();    
    });      
}

router.post('/', (req, res) => {  
    let sql = 'INSERT INTO user SET ?'

    let user = req.body;
    let password = req.body.password;
    let username = req.body.username;

    bcrypt.hash(password, saltRounds, function(err, hash) {
        if (err) console.log(err);
        user.password = hash;

        pool.getConnection((err, connection) => {   
            connection.query(sql, user, (error, result) => {
                if (error) { 
                    console.log(error); 
                }         
                connection.query(`SELECT * FROM user WHERE username = '${username}'`, (error2, result2) => {
                    if (error2) { 
                        console.log(error2); 
                    } 

                    const { password, ...toSend } = result2[0];

                    res.json(toSend);
                    connection.release();                      
                })                 
            });     
        })
    });    
});

module.exports = router;