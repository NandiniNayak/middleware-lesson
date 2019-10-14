const express = require("express");
const router = express.Router();
const ProductController = require("./controller/product_controller");

// this function validates if the res.body has a name and the price of the product is greater than 1
// router.use("/products/create/", (req, res, next) => {
//     console.log(req.body);
//     if(req.body) {
//         if(!req.body.name) {
//             res.status(422).send("Name is required");
//         }
//         if(req.body.price && req.body.price < 0){
//             res.status(422).send("Price must be geater than 0");
//         }
//     }
//     next();
// })

router.get("/", (req,res) => {
    res.send("Welcome");
})

// create a products page
router.get("/products", (req, res) => {
    res.send("PRODUCTS");
})

const validate = (req, res, next) => {
    if (req.body) {
        if (!req.body.name) {
            res.status(422).send("Name is required");
        }
        if (req.body.price && req.body.price < 0) {
            res.status(422).send("Price must be geater than 0");
        }
    }
    next();
}

router.post("/products",validate, ProductController.create);
module.exports = router;