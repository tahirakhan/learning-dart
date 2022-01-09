import 'dart:mirrors';

void main(List<String> arguments) {
  int myAge = 40;
  int yourAge = 300;

  String message = "";
  if (myAge > yourAge) {
    message = "My age is greater then your age.";
  } else if (myAge == yourAge) {
    message = "We are equal.";
  } else if (myAge < yourAge) {
    message = "My age is less then your age.";
  }

  print(message);
}
