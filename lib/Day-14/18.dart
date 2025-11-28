//* Q18. Take student's name and marks as input. Use ternary operator to assign grade: marks >= 90 ? 'A' : marks >= 75 ? 'B' : marks >= 60 ? 'C' : 'D'. Print student name with grade.

import 'dart:io';

void main() {
  print("Enter student's name:");
  String name = stdin.readLineSync()!;

  print("Enter marks:");
  int marks = int.parse(stdin.readLineSync()!);

  String grade = marks >= 90
      ? 'A'
      : marks >= 75
      ? 'B'
      : marks >= 60
      ? 'C'
      : 'D';

  print("$name scored grade: $grade");
}
