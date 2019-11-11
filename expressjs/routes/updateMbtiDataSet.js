const express = require("express");
const jwt = require("jsonwebtoken");
const router = express.Router();
const pool = require("../pool");

router.post("/", (req, res) => {
  const token = req.headers.token;
  let sql = "UPDATE user_data_set SET MBTI_role= ? WHERE userId = ?";
  let userMbtiRole = req.body.role;

  jwt.verify(token, process.env.ACCESS_TOKEN_SECRET, (error, decoded) => {
    if (error) return res.json({ msg: "unauthorized" });
    pool.getConnection((err, connection) => {
      connection.query(sql, [userMbtiRole, decoded.id], function(err, results) {
        if (err) console.log(err);

        connection.release();
        return res.json({ msg: "totu ok" });
      });
    });
  });
});
module.exports = router;
