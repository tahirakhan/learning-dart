import 'dart:io';

void main(List<String> arguments) {
  bool exit = false;
  while (!exit) {
    switch (printOptions()) {
      case "1":
        print("Going to Print all the records on the screen");
        break;

      case "2":
        print("Going to add new record");
        break;

      case "3":
        print("Going to edit existing record");
        break;

      case "4":
        print("Going to delete existing record");
        break;

      case "5":
        print("Going to exit now");
        exit = true;
        break;

      default:
        print("You have selected wrong option");

        break;
    }
  }
}

String? printOptions() {
  print("Press 1 to View all records");
  print("Press 2 to Add New record");
  print("Press 3 to Edit Existing record");
  print("Press 4 to Delete Existing record");
  print("Press 5 to Exit");
  stdout.write("Select 1 option ");
  String? input = stdin.readLineSync();
  return input;
}
// enum Input {
//   ,

// }