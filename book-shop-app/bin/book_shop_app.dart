import 'dart:io';

import 'package:colorize/colorize.dart';

import 'bill.dart';
import 'book.dart';
import 'book_shop.dart';
import 'util/util.dart';

class BookShopApp {
  BookShop shop = BookShop(shopName: 'Tahir Book Shop');

  final String prompt =
      'Please select: (v)iew items, (s)elect book, (c)heckout, (e)xit: ';

  void run() {
    var bill = Bill();

    shop.init();

    while (true) {
      String? input = Util.getInput(prompt);

      switch (input) {
        case 'v':
          bill.viewBooks?.forEach((element) {
            print(Colorize('$element \n').lightGreen());
          });
          break;
        case 's':
          Util.printTitle('Available Books:');

          for (var book in shop.books) {
            print(
                '${book.id} ${book.bookTitle} (${book.bookAuthor}) Rs. ${book.price}');
          }

          String? id = Util.selectBook('Your choice: ');
          List<Book> result = shop.books.where((e) => e.id == id).toList();
          bill.addBook(result[0]);

          break;

        case 'c':
          print(Colorize('Bill # ${bill.id}, Total bill amount = ' +
                  bill.totalBill.toString())
              .black()
              .bgLightCyan());
          bill = Bill();
          break;

        case 'e':
          exit(0);
        default:
          print('Invalid Option, try again.');
          break;
      }
    }
  }
}

void main(List<String> arguments) {
  final app = BookShopApp();
  app.run();
}
