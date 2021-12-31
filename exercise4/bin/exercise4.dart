void main(List<String> arguments) {
  int a = 9;
  int b = 5;

  print('addition  = ${a + b}');
  print('subtract  = ${a - b}');
  print('multiply  = ${a * b}');
  print('divide  = ${a / b}');
  print('int part of division  = ${a ~/ b}');
  print('remainder  = ${a % b}');

  String val1 = "Tahir";
  String val2 = " Khan";

  print(val1 + val2);
  String value1 = "*";

  print(value1 * 5);

  int val3 = 10;
  val3 = val3 + 1;

  print(val3);

  int val4 = 10;
  val4++;

  print(val4);

  int c = 9;
  int d = 5;

  print('addition ${--c + d}');

  c += c;
  c++;
  ++c;
  print('addition ${c++ + d}');

  int num1 = 10;

  double num2 = num1.toDouble();

  print(num1);
  print(num2);

  double num5 = 12.365426;

  print(num5.toStringAsFixed(2));
}
