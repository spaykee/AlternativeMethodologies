const express = require("express");
const cors = require("cors");
const app = express();
const dotenv = require("dotenv/config");

var corsOptions = {
  origin: "http://localhost:8080",
  optionsSuccessStatus: 200
};

// body parser middleware
app.use(express.json());
app.use(express.urlencoded({ extended: false }));

// check username and employer's code
app.use(
  "/api/checkUsername",
  cors(corsOptions),
  require("./routes/checkUsername")
);
app.use(
  "/api/checkEmployerCode",
  cors(corsOptions),
  require("./routes/checkEmployerCode")
);

app.use("/api/login", cors(corsOptions), require("./routes/login"));

//get Loged in user
app.use(
  "/api/getLoginUser",
  cors(corsOptions),
  require("./routes/getLoginUser")
);

// get zodiac
app.use("/api/getZodiac", cors(corsOptions), require("./routes/zodiac"));
// get numerology
app.use(
  "/api/getNumerology",
  cors(corsOptions),
  require("./routes/numerology")
);
// get zodac ascendant
app.use(
  "/api/getAscendantByZodiac",
  cors(corsOptions),
  require("./routes/ascendant")
);

// creates mew dataset
app.use("/api/createDataset", cors(corsOptions), require("./routes/dataset"));

// adds to user_belbin all his answers
app.use(
  "/api/addUserBelbin",
  cors(corsOptions),
  require("./routes/addUserBelbin")
);

// adds to user_enneagram all his answers
app.use(
  "/api/addUserEnneagram",
  cors(corsOptions),
  require("./routes/addUserEnneagram")
);

// updates user_data_set for belbin
app.use(
  "/api/updateBelbinDataSet",
  cors(corsOptions),
  require("./routes/updateBelbinDataSet")
);

// updates user_data_set for enneagram
app.use(
  "/api/updateEnneagramDataSet",
  cors(corsOptions),
  require("./routes/updateEnneagramDataSet")
);

// creates new user
app.use("/api/createUser", cors(corsOptions), require("./routes/user"));

app.use(
  "/api/getBelbinQuestions",
  cors(corsOptions),
  require("./routes/belbin_question")
);

// creates user Mbti
app.use("/api/addUserMbti", cors(corsOptions), require("./routes/addUserMbti"));

// updates user Mbti dataset
app.use(
  "/api/updateMbtiDataSet",
  cors(corsOptions),
  require("./routes/updateMbtiDataSet")
);

const PORT = process.env.PORT || 5000;

app.listen(PORT, () => console.log(`server started on ${PORT}`));
