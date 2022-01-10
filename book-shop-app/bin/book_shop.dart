import 'boot.dart';
import 'util/util.dart';

class BookShop {
  String shopName;
  List<Book> books = [];
  BookShop({shopName}) : shopName = shopName;

  void init() {
    List<Book>? data = Util.readDataFromCSV();
    if (data != null) {
      books = data;
    }
  }
}
