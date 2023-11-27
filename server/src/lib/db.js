const mysql = require("mysql2");
const config = require("./config.json");

const db = mysql.createPool(config.db);

db.on("connection", (connection) => {
  console.log("DB Connection established");

  connection.on("error", (err) => {
    console.error(new Date(), "MySQL error", err.code);
  });

  connection.on("close", (err) => {
    console.error(new Date(), "MySQL close", err);
  });
});

module.exports = db;
