const express = require("express");
const router = express.Router();
const controller = require("../controllers/controllers");

router.get("/", controller.connectionCheck);

module.exports = router;
