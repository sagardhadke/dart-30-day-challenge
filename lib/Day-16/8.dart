//* Question 8: Multi-Category Exam System
//* Take student name as input. Take marks for 3 categories as input: Theory (out of 100), Practical (out of 50), Assignment (out of 50). Convert all to percentage. Calculate final percentage: (theory × 50%) + (practical × 30%) + (assignment × 20%). Check passing criteria: (theory >= 40 && practical >= 40 && assignment >= 40 && final_percentage >= 50). Calculate grade using nested ternary. Use stdout.write() for all input prompts. Use print() to create comprehensive marksheet with:
//* Individual component marks and percentages
//* Final percentage calculation breakdown
//* Grade and Pass/Fail status
//* Remarks based on performance
//* Format it professionally.

import 'dart:io';

void main() {
  stdout.write("Enter student name: ");
  String name = stdin.readLineSync()!;

  stdout.write("Theory marks (out of 100): ");
  double theory = double.parse(stdin.readLineSync()!);

  stdout.write("Practical marks (out of 50): ");
  double practical = double.parse(stdin.readLineSync()!);

  stdout.write("Assignment marks (out of 50): ");
  double assignment = double.parse(stdin.readLineSync()!);

  double theoryP = theory;
  double practicalP = (practical / 50) * 100;
  double assignmentP = (assignment / 50) * 100;

  double finalPercent = theoryP * 0.5 + practicalP * 0.3 + assignmentP * 0.2;

  String grade = finalPercent >= 90
      ? "A+"
      : finalPercent >= 80
      ? "A"
      : finalPercent >= 70
      ? "B"
      : finalPercent >= 60
      ? "C"
      : "D";

  bool pass =
      (theoryP >= 40 &&
      practicalP >= 40 &&
      assignmentP >= 40 &&
      finalPercent >= 50);

  print("\n================= MARKSHEET =================");
  print("Name: $name");
  print("---------------------------------------------");
  print("Theory: $theoryP%");
  print("Practical: ${practicalP.toStringAsFixed(2)}%");
  print("Assignment: ${assignmentP.toStringAsFixed(2)}%");
  print("---------------------------------------------");
  print("Final Percentage: ${finalPercent.toStringAsFixed(2)}%");
  print("Grade: $grade");
  print("Status: ${pass ? 'PASS' : 'FAIL'}");
  print(
    "Remarks: ${finalPercent >= 80
        ? 'Excellent'
        : finalPercent >= 60
        ? 'Good'
        : 'Needs Improvement'}",
  );
  print("==============================================\n");
}
