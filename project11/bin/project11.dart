void main(List<String> arguments) {
  List<String> list = ["1", "2", "3", "4", "5"];

  for (String element in list) {
    print(element);
  }

  List<int> list2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  list2 = list2.map((e) {
    print(e);

    return e = e * 2;
  }).toList();

  list2 = list2.where((e) {
    print(e);
    return e > 10;
  }).toList();

  int total = 0;
  for (int element in list2) {
    total += element;
  }
  //print(list2);
}
