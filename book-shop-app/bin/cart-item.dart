import 'book.dart';

class Item {
  Book book;
  int quantity;

  Item({book, qty})
      : book = book,
        quantity = qty;
}
