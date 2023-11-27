const db = require("../lib/db");

exports.connectionCheck = (req, res) => {
  const sql = `SELECT * FROM audio`;
  db.query(sql, (err, results) => {
    if (err) {
      return res.status(500).json({ err: err.message });
    }
    res.json(results);
  });
};
