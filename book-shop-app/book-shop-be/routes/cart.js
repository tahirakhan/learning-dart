var express = require('express');
var router = express.Router();
const Bill = require('../model/bill');
const Book = require('../model/book');


router.post('/checkout', async (req, res) => {
    const book = await Book.findOne({ _id: "61db2ece15a43a3131502f59" });

    var bill = Bill();
    bill.books.push(book);
    bill.total = 235.32;
    try {
        await bill.save();
        res.status(200).send( bill );
      } catch (err) {
        console.log("Error ", err.message);
        res.status(500).json({ msg: "Server Error" });
      }
    
  });
  

// @route GET /api/books
// @desc Get all posts
// @access Private
router.get("/",  async (req, res) => {
    try {
      const bill = await Bill.find();
      res.status(200).send( bill );
    } catch (err) {
      console.log("Error ", err.message);
      res.status(500).json({ msg: "Server Error" });
    }
  });
  
  // @route GET /api/posts/:userID
  // @desc Get user's posts
  // @access Private
  router.get("/:cartID",  async (req, res) => {
    try {
      const bill = await Bill.findOne({ _id: req.params.cartID });
      res.status(200).send( bill );
    } catch (err) {
      console.log("Error ", err.message);
      res.status(500).json({ msg: "Server Error" });
    }
  });
  

// @route DELETE /api/posts/:postID
// @desc Delete Post
// @access Private
router.delete("/:id",  async (req, res) => {
    // Validate Data inside request body
    const errors = validationResult(req);
    if (!errors.isEmpty())
      return res.status(400).json({ errors: errors.array() });
  
    try {
      let bill = await Bill.findById(req.params.id);
      if (!bill)
        return res.status(400).json({ msg: "Bill with this ID does not exist" });
  
      
      await Bill.findByIdAndRemove(req.params.id);
  
      res.status(200).json({ msg: "The Bill has been deleted" });
    } catch (err) {
      console.log("Error ", err.message);
      res.status(500).json({ msg: "Server Error" });
    }
  });
  
  

module.exports = router;
