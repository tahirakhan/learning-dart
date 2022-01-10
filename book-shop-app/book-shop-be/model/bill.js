const mongoose = require("mongoose");
require('mongoose-double')(mongoose);

var Double = mongoose.Schema.Types.Double;

const Bill = mongoose.Schema({

  books: [{
    type: mongoose.Schema.Types.ObjectId,
    ref: "Book"
  }
],

  total: {
    type: Double,
    required: true
  },
});

module.exports = mongoose.model("Bill", Bill);