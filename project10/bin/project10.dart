void main(List<String> arguments) {
  List programs = [
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
  processData(programs);
}

void processData(List programs) {
  for (Map program in programs) {
    double avg = findAverage(program['studentAgeList']);

    print('The average age in program ${program['name']} is ${avg}');
  }
}

double findAverage(List<double> numberList) {
  if (numberList.length == 0) {
    return 0;
  }

  double sumOfAge = 0;

  numberList.forEach((double num) {
    sumOfAge += num;
  });

  return double.parse((sumOfAge / numberList.length).toStringAsFixed(2));
}
