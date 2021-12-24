import "dart:io";

main(List<String> args) {
  var num = 10;

  for (var i = 1; i <= num; i++) {
    for (var j = i; j <= num; j++) {
      stdout.write("*");
    }
    print("");
  }

  for (var i = 1; i <= num; i++) {
    for (var j = num; j >= num - i; j--) {
      stdout.write("*");
    }
    print("");
  }
}
