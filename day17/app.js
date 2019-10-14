const express = require("express");
const app = express();
const bodyParser = require('body-parser');
const port = 3000;

// parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: false }))

// parse application/json
app.use(bodyParser.json())

// middle ware function
app.use((req, res, next) => {
    // middleware functions have access to req and response objects
    console.log("URL", req.url);
    console.log("method", req.method);
    console.log("body", req.body || {});
    console.log("middle ware running");
    // invoke the next function in the request lifecycle
    next();
})

app.use(require("./routes"));
app.listen(port, () => console.log(`server running on port ${port}`));

