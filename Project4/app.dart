import 'dart:io';

main(List<String> args) {
  print("Enter the value in centigrade");
  // Scanning number
  int? valueInCentegrade = int.parse(stdin.readLineSync()!);

  // var valueInCentegrade = 45;

  var valueInFahrenheit = (valueInCentegrade * 9 / 5) + 32;

  print("Value in Fahrenheit = $valueInFahrenheit");
}
