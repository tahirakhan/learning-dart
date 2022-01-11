import 'dart:math';

import 'book.dart';
import 'cart-item.dart';

class Bill {
  final id = Random().nextInt(1000);
  double totalBill = 0;
  Map<String, Item> books = {};

  void addBook(Book book) {
    if (books[book.id] == null) {
      books[book.id] = Item(book: book, qty: 1);
    } else {
      books[book.id] = Item(book: book, qty: books[book.id]!.quantity + 1);
    }
    totalBill += book.price;
  }

  String get totalBillAmount => 'Bill # $id - Total Bill Amount: $totalBill';

  List<String>? get viewBooks {
    final List<String> details = [];
    books.forEach((key, value) {
      final book = value.book;
      details.add(
          '(${book.id}) ${book.bookTitle} (${book.bookAuthor}) - (Rs.${book.price} x  ${value.quantity} = ${book.price * value.quantity})');
    });
    return details;
  }
}
