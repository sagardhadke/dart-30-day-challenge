//* Question 4: Ternary Operator Basics
//* Take marks as input. Use simple ternary to assign result: marks >= 40 ? "Pass" : "Fail". Take another input for attendance percentage. Use ternary: attendance >= 75 ? "Eligible for exam" : "Not eligible". Take a third input for age and use ternary: age >= 18 ? "Adult" : "Minor". Display all three results using print().

import 'dart:io';

void main() {
  stdout.write("Enter marks: ");
  int marks = int.parse(stdin.readLineSync()!);

  stdout.write("Enter attendance %: ");
  int attendance = int.parse(stdin.readLineSync()!);

  stdout.write("Enter age: ");
  int age = int.parse(stdin.readLineSync()!);

  String result = marks >= 40 ? "Pass" : "Fail";
  String attendanceStatus = attendance >= 75
      ? "Eligible for exam"
      : "Not eligible";
  String ageType = age >= 18 ? "Adult" : "Minor";

  print("\nResult: $result");
  print("Attendance: $attendanceStatus");
  print("Age: $ageType");
}
