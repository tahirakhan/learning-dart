import 'dart:io';

import 'book_shop.dart';
import 'util/util.dart';

class BookShopApp {
  BookShop shop = BookShop(shopName: 'Tahir Book Shop');

  final String prompt =
      'Please select: (v)iew items, (s)elect book, (c)heckout, (e)xit: ';

  void run() {
    shop.init();

    while (true) {
      String? input = Util.getInput(prompt);

      switch (input) {
        case 'v':
          print(shop.books.length);
          break;
        case 's':
          Util.printTitle('Available Books:');

          Util.selectBook('Your choice: ');
          break;

        case 'c':
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
