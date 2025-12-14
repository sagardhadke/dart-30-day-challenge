//* Question 4: Grade System with Functions
//* Create a function calculateGrade() that takes marks as parameter. Use if-else to return grade (A+/A/B/C/D/F). Take 3 students' marks as input. Store in list. Use forEach with anonymous function to display each mark with grade.

import 'dart:io';

String calculateGrade(int marks) {
  if (marks >= 90) return "A+";
  if (marks >= 80) return "A";
  if (marks >= 70) return "B";
  if (marks >= 60) return "C";
  if (marks >= 50) return "D";
  return "F";
}

void main() {
  List<int> marks = [];

  for (int i = 1; i <= 3; i++) {
    stdout.write("Enter marks for student $i: ");
    marks.add(int.parse(stdin.readLineSync()!));
  }

  marks.forEach((m) {
    print("Marks: $m  Grade: ${calculateGrade(m)}");
  });
}
