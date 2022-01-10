abstract class Person {
  Person({required this.name});
  String name;
  void getDetails();
  factory Person.fromType({required typeName, required name, salary, fee}) {
    if (typeName == 'Trainer') return Trainer(salary: salary, name: name);
    if (typeName == 'Student') return Student(fee: fee, name: name);
    throw UnimplementedError('Unable to recognize $typeName');
  }
  factory Person.fromJson({json}) {

    switch (json["type"]) {
      case 'Trainer':
        return Trainer(salary: salary, name: name);
        break;
      case 'Student':
        return Student(fee: fee, name: name);
        break;

      case 'Director':
        throw UnimplementedError('Unable to recognize $type');
        break;
    }
  } 

  }
  factory Person.fromJson({name, salary, type, fee}) {
    switch (json["type"]) {
      case 'Trainer':
        return Trainer(salary: salary, name: name);
        break;
      case 'Student':
        return Student(fee: fee, name: name);
        break;

      case 'Director':
        throw UnimplementedError('Unable to recognize $type');
        break;
    }
  }
}

class Trainer extends Person {
  Trainer({required name, required this.salary}) : super(name: name);
  int salary;
  void getDetails() => print('Trainer name: $name, salary: $salary');
}

class Student extends Person {
  Student({required name, required this.fee}) : super(name: name);
  int fee;
  void getDetails() => print('Student name: $name, fee: $fee');
}

void main() {
  final dartTrainer = Person.fromJson(
      json: {'name': 'Aamir', 'salary': 1000, 'type': 'Trainer'});
  final student1 =
      Person.fromJson(json: {'name': 'Ali', 'fee': 500, 'type': 'Student'});
  dartTrainer.getDetails();
  student1.getDetails();
  final unknowType =
      Person.fromJson(json: {'name': 'John', 'fee': 1500, 'type': 'Director'});
  unknowType.getDetails();
}
