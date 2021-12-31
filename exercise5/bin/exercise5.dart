void main(List<String> arguments) {
  int val1 = 10;
  String val2 = "Rest";

  print('${val1 is int}');
  print('${val1 is! int}');

  print('${val2 is String}');
  print('${val2 is! String}');

  int res = val1 >= 10 ? 50 : 30;

  print(res);
}
