//* Question 4: Subject Marks Analyzer
//* Take marks for 5 subjects as input. Store in a list. Calculate total and percentage. Count how many subjects have marks >= 80 (distinction), >= 60 (first class), >= 40 (pass). Use logical operators to check: overall pass (all subjects >= 40) && (percentage >= 50). Use print() to create formatted marksheet with all statistics.

import 'dart:io';

void main() {
  List<int> marks = [];

  for (int i = 1; i <= 5; i++) {
    stdout.write("Enter marks for subject $i: ");
    marks.add(int.parse(stdin.readLineSync()!));
  }

  int total = marks.reduce((a, b) => a + b);
  double percentage = total / 5;

  int distinction = marks.where((m) => m >= 80).length;
  int firstClass = marks.where((m) => m >= 60 && m < 80).length;
  int pass = marks.where((m) => m >= 40 && m < 60).length;

  bool overallPass = marks.every((m) => m >= 40) && percentage >= 50;

  print("\n------ MARKSHEET ------");
  print("Marks: $marks");
  print("Total: $total");
  print("Percentage: $percentage%");
  print("Distinction Subjects: $distinction");
  print("First Class Subjects: $firstClass");
  print("Pass Subjects: $pass");
  print("Overall Result: ${overallPass ? "PASS" : "FAIL"}");
}
