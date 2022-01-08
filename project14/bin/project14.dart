void main(List<String> arguments) {
  Car myCar = new Car("City", "2021");

  print(myCar.getName());
}

class Car {
  String? name;
  String? model;

  Car(String name, String model) {
    this.name = name;
    this.model = model;
  }

  String? getName() {
    return name;
  }
}
