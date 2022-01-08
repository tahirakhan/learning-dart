void main(List<String> arguments) {
  List<Map<String, dynamic>> programs = [
    {
      "name": 'BBA Morning',
      "studentAgeList": <double>[20, 21, 22, 20, 23, 19]
    },
    {
      "name": 'MBA Morning',
      "studentAgeList": <double>[23, 23, 24, 23, 22.5]
    },
    {"name": 'MBA Evening', "studentAgeList": <double>[]}
  ];

  for (Map<String, dynamic> program in programs) {
    double averageAge = getAverageAge(program["studentAgeList"]);
    print('Average age for ${program["name"]} is $averageAge');
  }
}

getAverageAge(List<double> studentAgeList) {
  if (studentAgeList.length == 0) {
    return 0.0;
  }
  double sum = 0;
  for (double studetAge in studentAgeList) {
    sum += studetAge;
  }
  return double.parse((sum / studentAgeList.length).toStringAsFixed(2));
}
