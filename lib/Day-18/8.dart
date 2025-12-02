//* Question 8: Nested Ternary Grade System
//* Take percentage as input. Assign grade using nested ternary operators:
//* percentage >= 90 ? "A+" : percentage >= 80 ? "A" : percentage >= 70 ? "B" : percentage >= 60 ? "C" : percentage >= 50 ? "D" : "F"
//* Also use another nested ternary for remarks:
//*
//* grade == "A+" || grade == "A" ? "Excellent" : grade == "B" || grade == "C" ? "Good" : "Needs Improvement"
//* Display both grade and remarks with proper formatting.

import 'dart:io';

void main() {
  stdout.write("Enter percentage: ");
  int p = int.parse(stdin.readLineSync()!);

  String grade = p >= 90
      ? "A+"
      : p >= 80
      ? "A"
      : p >= 70
      ? "B"
      : p >= 60
      ? "C"
      : p >= 50
      ? "D"
      : "F";

  String remarks = (grade == "A+" || grade == "A")
      ? "Excellent"
      : (grade == "B" || grade == "C")
      ? "Good"
      : "Needs Improvement";

  print("Grade: $grade");
  print("Remarks: $remarks");
}
