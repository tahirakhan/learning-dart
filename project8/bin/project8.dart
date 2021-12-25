void main(List<String> arguments) {
  List names = ["Tahir", "Ali", "khan"];
  names.map((name) => print(name)); //why this is not printing names

  names.map((name) => print(name)).toList(); //why this is not printing names
  names.where((element) => element == "Tahir").toString();

  names.add("Majir");
  names.insert(2, "Bilal");
  List abc = ["asd", "ddd"];
  names.addAll(abc);
  print(names);

  print(names.indexOf("Majir"));
/** 
  for (var name in names) {
    print(name);
  }

*/
}
