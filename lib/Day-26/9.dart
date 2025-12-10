//* Question 9: Grade System with Switch
//* Take marks (0-100) as input. Use switch case with ranges:
//* - 90-100: A+
//* - 80-89: A
//* - 70-79: B
//* - 60-69: C
//* - 50-59: D
//* - Below 50: F
//* (Hint: Use marks ~/10 in switch to create ranges)
//* Print the grade.

import 'dart:io';

void main() {
  print('Enter marks (0-100): ');
  int marks = int.parse(stdin.readLineSync()!);

  String grade;

  switch (marks ~/ 10) {
    case 10:
    case 9:
      grade = 'A+';
      break;
    case 8:
      grade = 'A';
      break;
    case 7:
      grade = 'B';
      break;
    case 6:
      grade = 'C';
      break;
    case 5:
      grade = 'D';
      break;
    default:
      grade = 'F';
  }

  print('Grade: $grade');
}
