import 'dart:math';

void main() {
  int yourNumber = generateNumber("Your Number");
  int systemNumber = generateNumber("System Number");
  processNumber(yourNumber, systemNumber);
}

int generateNumber(message) {
  int result = Random().nextInt(6) + 1;
  print("$message $result");
  return result;
}

void processNumber(yourNumber, systemNumber) {
  if (yourNumber == systemNumber) {
    print("its a tie!");
  } else if (yourNumber > systemNumber) {
    print("You win!");
  } else {
    print("You lost!");
  }
}
