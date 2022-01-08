class Car {
  Car(int mileage) : mileage = mileage;

  String? color;
  int wheels = 4;
  int mileage = 0;
  int getMileage() {
    return mileage;
  }

  bool increaseMileage(int distance) {
    mileage += distance;
    return true;
  }
}

void main(List<String> arguments) {
  Car myCar = Car(10);
  myCar.color = 'White';
  print('The car current mileage is ${myCar.getMileage()}');
  myCar.increaseMileage(50);
  print('The car current mileage is ${myCar.getMileage()}');
  myCar.increaseMileage(100);
  print('The car current mileage is ${myCar.getMileage()}');
}
