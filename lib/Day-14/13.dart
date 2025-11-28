//* Q13. Take 5 subject marks as input from user. Store in a list. Calculate and print total and percentage.

import 'dart:io';

void main() {
  List<int> marks = [];

  for (int i = 1; i <= 5; i++) {
    print("Enter marks for subject $i:");
    marks.add(int.parse(stdin.readLineSync()!));
  }

  int total = marks.reduce((a, b) => a + b);
  double percentage = total / 5;

  print("Total = $total");
  print("Percentage = $percentage%");
}
