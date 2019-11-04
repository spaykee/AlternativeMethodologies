const sql = require('mssql/msnodesqlv8')

const pool = new sql.ConnectionPool({
    database: 'MDM',
    server: 'localhost',
    driver: 'msnodesqlv8',
    options: {
      trustedConnection: true
    }
  });

  module.exports = pool;