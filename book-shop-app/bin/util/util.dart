import 'dart:io';
import 'dart:math';
import 'package:colorize/colorize.dart';

import '../boot.dart';

class Util {
  static String? getInput(String prompt) {
    var message = Colorize(prompt);
    message.blue();
    stdout.write(message);

    // Scanning number
    String? userInput = stdin.readLineSync()!;
    return userInput;
  }

  static void printTitle(String prompt) {
    var message = Colorize(prompt);
    message.bgMagenta();
    print(message);
  }

  static String? selectBook(String prompt) {
    var message = Colorize(prompt);
    message.bgMagenta();
    stdout.write(message);
    // Scanning number
    String? userInput = stdin.readLineSync()!;
    return userInput;
  }

  static List<Book>? readDataFromCSV() {
    var books = <Book>[];
    try {
      var fileContent = File('../data/books.csv').readAsLinesSync();
      for (var line in fileContent) {
        List<dynamic> lineValues = line.split(',');
        if (lineValues[0] != 'id') {
          var book = Book(
              id: lineValues[0],
              bookTitle: lineValues[1],
              bookAuthor: lineValues[2],
              price: double.parse(lineValues[3]));
          books.add(book);
        }
      }
    } catch (e) {
      print(e.toString());
    }
    return books;
  }
}
