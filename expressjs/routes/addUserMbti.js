const express = require("express");
const jwt = require("jsonwebtoken");
const router = express.Router();
const pool = require("../pool");

router.post("/", (req, res) => {
  const token = req.headers.token;
  let sql =
    "INSERT INTO user_mbti (questionId, answerId, answerMbtiType, userId) VALUES ?";
  let userMbti = req.body;

  jwt.verify(token, process.env.ACCESS_TOKEN_SECRET, (error, decoded) => {
    if (error) return res.json({ msg: "unauthorized" });

    let arrayUserMbti = [];

    userMbti.forEach(element => {
      element.id = decoded.id;
    });

    userMbti.forEach(element => {
      arrayUserMbti.push(Object.values(element));
    });

    console.log(arrayUserMbti);

    pool.getConnection((err, connection) => {
      connection.beginTransaction(function(err) {
        if (err) {
          throw err;
        }
        connection.query(sql, [arrayUserMbti], (error, result) => {
          if (err) {
            console.log(error);
            connection.rollback(function() {
              throw err;
            });
          }
          connection.commit(function(err) {
            if (err) {
              connection.rollback(function() {
                throw err;
              });
            }
            res.json(result);
            console.log("Transaction Completed Successfully.");
            connection.release();
          });
        });
      });
    });
  });
});

module.exports = router;
