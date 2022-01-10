const mongoose = require("mongoose");
require('mongoose-double')(mongoose);
var Double = mongoose.Schema.Types.Double;

const Book = mongoose.Schema({

  bookTitle: {
    type: String,
    required: true,
    unique: true,
  },
  bookAuthor: {
    type: String,
    required: true,
  },
  price: {
    type: Double,
    required: true
  },
});

module.exports = mongoose.model("Book", Book);