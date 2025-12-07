//* Question 8: Grade Calculator
//* Take percentage as input. Use nested if-else to assign grade:
//* - If percentage >= 90, grade = "A+"
//* - Else if percentage >= 80, grade = "A"
//* - Else if percentage >= 70, grade = "B"
//* - Else if percentage >= 60, grade = "C"
//* - Else if percentage >= 50, grade = "D"
//* - Else grade = "F"
//* Display percentage and grade.
//* Test with: 95, 82, 65, 45

import 'dart:io';

void main() {
  stdout.write("Enter percentage: ");
  double p = double.parse(stdin.readLineSync()!);

  String grade = "";

  if (p >= 90) {
    grade = "A+";
  } else if (p >= 80) {
    grade = "A";
  } else if (p >= 70) {
    grade = "B";
  } else if (p >= 60) {
    grade = "C";
  } else if (p >= 50) {
    grade = "D";
  } else {
    grade = "F";
  }

  print("Percentage: $p%");
  print("Grade: $grade");
}
