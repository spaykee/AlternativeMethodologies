const express = require("express");
const router = express.Router();
const pool = require("./pool");
const sql = require('mssql/msnodesqlv8');

let jsonResult = require("./jsonResult");

router.post('/', (req, res) => {  
    console.dir(req.body);
    const filter = req.body;

    pool.connect().then(() => {
        const offset = (filter.page - 1) * filter.itemsPerPage;
        const take = filter.itemsPerPage;

        let sqlString = " SELECT * FROM Alias ";
        if (filter.search !== "") {
            sqlString += ` WHERE AliasId LIKE '${filter.search}' OR TypeREF LIKE '${filter.search}' OR AliasCode LIKE '${filter.search}' `
        }

        if (filter.columns.name === 'id') {
            sqlString += ` ORDER BY AliasId ${filter.columns.order} `
        } else {
            sqlString += ` ORDER BY AliasId ${filter.columns.order} `
        }

        sqlString += ` OFFSET ${offset} ROWS FETCH NEXT ${take} ROWS ONLY `

        // console.dir(sqlString);

        const countString = `SELECT total = SUM(st.row_count) FROM sys.dm_db_partition_stats st WHERE object_name(object_id) = 'Alias' AND (index_id < 2)`

        pool.request().query(sqlString, (err, result) => {
            if (err) console.log(err);


            // console.dir(result);
            jsonResult.data = result.recordset;
         })

         pool.request().query(countString, (err, result) => {
            if (err) console.log(err);

            jsonResult.count = result.recordset[0].total;
            jsonResult.page = filter.page;

            res.json(jsonResult);
            pool.close();
         })         
    })
});

module.exports = router;