//* Question 15: Complete Student Grade System
//* Take student name and marks for 5 subjects as input.
//* Calculate total and percentage.
//* Use nested if-else for grade calculation:
//* First check if any subject < 40 (FAIL condition):
//* - If yes, grade = "F" and result = "FAIL"
//* Else check percentage:
//* - If percentage >= 90 and all subjects >= 80: grade = "A+" (Distinction)
//* - Else if percentage >= 80: grade = "A" (First Class)
//* - Else if percentage >= 70: grade = "B" (Second Class)
//* - Else if percentage >= 60: grade = "C" (Third Class)
//* - Else: grade = "D" (Pass Class)
//* Display formatted report card with:
//* - Student name
//* - All 5 subject marks
//* - Total marks (out of 500)
//* - Percentage
//* - Grade
//* - Result (PASS/FAIL)
//* Test with: 85,90,92,88,95 | 70,75,68,72,80 | 45,35,50,60,55

import 'dart:io';

void main() {
  stdout.write("Enter student name: ");
  String name = stdin.readLineSync()!;

  List<int> marks = [];
  for (int i = 1; i <= 5; i++) {
    stdout.write("Enter marks for subject $i: ");
    marks.add(int.parse(stdin.readLineSync()!));
  }

  int total = marks.reduce((a, b) => a + b);
  double percentage = total / 5;

  bool fail = marks.any((m) => m < 40);
  String grade = "";
  String result = "";

  if (fail) {
    grade = "F";
    result = "FAIL";
  } else {
    if (percentage >= 90 && marks.every((m) => m >= 80)) {
      grade = "A+ (Distinction)";
    } else if (percentage >= 80) {
      grade = "A (First Class)";
    } else if (percentage >= 70) {
      grade = "B (Second Class)";
    } else if (percentage >= 60) {
      grade = "C (Third Class)";
    } else {
      grade = "D (Pass Class)";
    }
    result = "PASS";
  }

  print("============== REPORT CARD ==============");
  print("Student: $name");
  for (int i = 0; i < marks.length; i++) {
    print("Subject ${i + 1}: ${marks[i]}");
  }
  print("Total Marks: $total / 500");
  print("Percentage: ${percentage.toStringAsFixed(2)}%");
  print("Grade: $grade");
  print("Result: $result");
  print("=========================================");
}
