import express from "express";
import Product from "../models/Product.js";


const router = express.Router()

router.get("/products", async(req, res) => {
    try{
        const product = await Product.find();
        res.status(200).json(product);
    }
    catch(err){
        res.status(404).json({message: err.message});
    }
})

export default router