const express = require("express");
const app = express();
const path = require("path");
const port = 3000;

app.use(express.static(path.join(__dirname, "./src/public")));

const routes = require("./src/routes/routes");
app.use("/api", routes);

app.get("*", (req, res) => {
  res.sendFile(path.join(__dirname, "./src/public/index.html"));
});

app.listen(port, () => {
  console.log(`Server is listening on port ${port}`);
});
