var express = require('express');
const Book = require('../model/book');
var router = express.Router();
const { check, validationResult } = require("express-validator");

router.post( "/", [
  check("bookTitle", "Book Title can not be empty").not().isEmpty(),
  check("bookAuthor", "Book Author can not be empty").not().isEmpty(),
  check("price", "Book Price can not be empty").not().isEmpty(),
],async (req, res) => {
  
  const errors = validationResult(req);
    if (!errors.isEmpty())
      return res.status(400).json({ errors: errors.array() });


    const book = new Book({
      bookTitle: req.body.bookTitle,
      bookAuthor: req.body.bookAuthor,
      price: req.body.price
    });

    try {
      await book.save();
      res.status(200).json({ book });
    } catch (err) {
      console.log("Error ", err.message);
      res.status(500).json({ msg: "Server Error" });
    }
  }
);

// @route GET /api/books
// @desc Get all posts
// @access Private
router.get("/",  async (req, res) => {
  try {
    const books = await Book.find();
    res.status(200).send( books );
  } catch (err) {
    console.log("Error ", err.message);
    res.status(500).json({ msg: "Server Error" });
  }
});

// @route GET /api/posts/:userID
// @desc Get user's posts
// @access Private
router.get("/:bookID",  async (req, res) => {
  try {
    const book = await Book.findOne({ _id: req.params.bookID });
    res.status(200).send( book );
  } catch (err) {
    console.log("Error ", err.message);
    res.status(500).json({ msg: "Server Error" });
  }
});

// @route PUT /api/posts/:postID
// @desc Update Post
// @access Private
router.put(
  "/:id",
    [
      check("bookTitle", "Book Title can not be empty").not().isEmpty(),
      check("bookAuthor", "Book Author can not be empty").not().isEmpty(),
      check("price", "Book Price can not be empty").not().isEmpty(),
    
    ],  
  async (req, res) => {
    // Validate Data inside request body
    const errors = validationResult(req);
    if (!errors.isEmpty())
      return res.status(400).json({ errors: errors.array() });

    const changes = {};

    if (req.body.bookTitle) changes.bookTitle = req.body.bookTitle;
    if (req.body.bookAuthor) changes.bookAuthor = req.body.bookAuthor;
    if (req.body.price) changes.price = req.body.price;

    try {
      let book = await Book.findById(req.params.id);
      if (!book)
        return res
          .status(400)
          .json({ msg: "Book with this ID does not exist" });

      // if (post.user.toString() !== req.user.id)
      //   return res
      //     .status(401)
      //     .json({ msg: "This user is not authorized to update this post" });

      book = await Book.findByIdAndUpdate(
        req.params.id,
        { $set: changes },
        { new: true }
      );

      res.status(200).json({ book });
    } catch (err) {
      console.log("Error ", err.message);
      res.status(500).json({ msg: "Server Error" });
    }
  }
);

// @route DELETE /api/posts/:postID
// @desc Delete Post
// @access Private
router.delete("/:id",  async (req, res) => {
  // Validate Data inside request body
  const errors = validationResult(req);
  if (!errors.isEmpty())
    return res.status(400).json({ errors: errors.array() });

  try {
    let book = await Book.findById(req.params.id);
    if (!book)
      return res.status(400).json({ msg: "Book with this ID does not exist" });

    
    await Book.findByIdAndRemove(req.params.id);

    res.status(200).json({ msg: "The Book has been deleted" });
  } catch (err) {
    console.log("Error ", err.message);
    res.status(500).json({ msg: "Server Error" });
  }
});


module.exports = router;
