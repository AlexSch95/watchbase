const express = require("express");
const bodyParser = require("body-parser");
const morgan = require("morgan");
const cors = require("cors");

const app = express();

app.use(cors());
app.use(express.json());
app.use(morgan("dev"));









app.listen(3000, () => {
    console.log("Server läuft auf http://localhost:3000")
});