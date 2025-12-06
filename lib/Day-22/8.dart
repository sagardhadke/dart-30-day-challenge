//* Question 8: Student Marks Entry System
//* Take student name and marks for 3 subjects as input using stdout.write() prompts. Calculate total and percentage. Use escape sequences to display formatted marksheet:
//* ================================
//*         MARKSHEET
//* ================================
//* Name:         [name]
//* Subject 1:    [marks1]
//* Subject 2:    [marks2]
//* Subject 3:    [marks3]
//* --------------------------------
//* Total:        [total]
//* Percentage:   [percentage]%
//* ================================

import 'dart:io';

void main() {
  stdout.write("Enter student name: ");
  String name = stdin.readLineSync()!;

  stdout.write("Enter marks for subject 1: ");
  int m1 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter marks for subject 2: ");
  int m2 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter marks for subject 3: ");
  int m3 = int.parse(stdin.readLineSync()!);

  int total = m1 + m2 + m3;
  double percent = total / 3;

  print("================================");
  print("        MARKSHEET");
  print("================================");
  print("Name:\t\t$name");
  print("Subject 1:\t$m1");
  print("Subject 2:\t$m2");
  print("Subject 3:\t$m3");
  print("--------------------------------");
  print("Total:\t\t$total");
  print("Percentage:\t${percent.toStringAsFixed(2)}%");
  print("================================");
}
