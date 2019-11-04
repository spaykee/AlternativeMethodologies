const express = require("express");
const cors = require('cors');
const app = express();

var corsOptions = {
  origin: 'http://localhost:8080',
  optionsSuccessStatus: 200 
}

// body parser middleware
app.use(express.json());
app.use(express.urlencoded({ extended: false }));

app.use("/api/getAliasPaginated", cors(corsOptions), require("./routes/alias"));

const PORT = process.env.PORT || 5000;

app.listen(PORT, () => console.log(`server started on ${PORT}`));