const express = require("express");
const jwt = require("jsonwebtoken");
const router = express.Router();
const pool = require("../pool");

router.post('/', (req, res) => {  
    let userBelbin = req.body;
    const token = req.headers.token;

    jwt.verify(token, process.env.ACCESS_TOKEN_SECRET, (error, decoded) => {
        if (error) return res.status(401).json({msg: "unauthorized"})

        // token valid
        userBelbin.forEach(element => {
            element.userId = decoded.id
        });

        let arrayOfUserBelbin = [];

        userBelbin.forEach(element => {
            arrayOfUserBelbin.push(Object.values(element));
        });

        const sql = 'INSERT INTO user_belbin (questionId, answerId, answerScore, answerBelbinId, userId) VALUES ?'

        pool.getConnection((err, connection) => { 

            connection.beginTransaction( err => {
                if (err) {    
                    console.log(err);              
                    connection.rollback(function() {
                        connection.release();
                        //Failure
                    });
                } else {
                    connection.query(sql, [arrayOfUserBelbin], function(err, results) {
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
                                    return res.json({msg: "user_belbin added"});
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