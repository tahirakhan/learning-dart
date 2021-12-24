import 'dart:io';

main(List<String> args) {
  print("Enter any number");
  // Scanning number
  int? userInput = int.parse(stdin.readLineSync()!);

  if (userInput % 2 == 0) {
    print("This Number is Even");
  } else {
    print("This Number is Odd");
  }
}
