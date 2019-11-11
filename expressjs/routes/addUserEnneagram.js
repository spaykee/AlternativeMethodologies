const express = require("express");
const jwt = require("jsonwebtoken");
const router = express.Router();
const pool = require("../pool");

router.post('/', (req, res) => {  
    let userEnenagram = req.body;
    const token = req.headers.token;

    jwt.verify(token, process.env.ACCESS_TOKEN_SECRET, (error, decoded) => {
        if (error) return res.json({msg: "unauthorized"})

        // token valid
        userEnenagram.forEach(element => {
            element.userId = decoded.id
        });

        let arrayOfUserEnneagram = [];

        userEnenagram.forEach(element => {
            arrayOfUserEnneagram.push(Object.values(element));
        });

        const sql = 'INSERT INTO user_enneagram (questionId, answerId, answerEnneagramType, userId) VALUES ?'

        pool.getConnection((err, connection) => { 

            connection.beginTransaction( err => {
                if (err) {    
                    console.log(err);              
                    connection.rollback(function() {
                        connection.release();
                        //Failure
                    });
                } else {
                    connection.query(sql, [arrayOfUserEnneagram], function(err, results) {
                        if (err) {          
                            console.log(err);   
                            connection.rollback(function() {
                                connection.release();
                            });
                        } else {
                            connection.commit(function(err) {
                                if (err) {
                                    console.log(err);   
                                    connection.rollback(function() {
                                        connection.release();
                                    });
                                } else {
                                    connection.release();
                                    return res.json({msg: "user_enneagram added"});
                                    //Success
                                }
                            });
                        }
                    });
                }   
            });          
        });
    });   
});

module.exports = router;