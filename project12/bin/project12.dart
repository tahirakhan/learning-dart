void main(List<String> arguments) {
  Map allClasses = {
    "schoolName": "City School",
    "morningShift": ["maths", "english", "science"],
    "afternoonShift": ["science", "arts"],
    "fee": 10000
  };

  print(allClasses["schoolName"]);
  print(allClasses["fee"]);
  print(allClasses["morningShift"][1]);
  print(allClasses["afternoonShift"][0]);
}
