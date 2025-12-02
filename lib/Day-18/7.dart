//* Question 7: Complex Logical Conditions
//* Take employee details as input: age, yearsOfExperience, salary, and department (IT/HR/Sales). Check promotion eligibility using complex logical operators:
//*
//* Condition 1: (age >= 25 && yearsOfExperience >= 5)
//* Condition 2: (salary >= 40000 && department == "IT")
//* Condition 3: (yearsOfExperience >= 7 || salary >= 50000)
//* Final eligibility: Condition1 && (Condition2 || Condition3)
//* Use stdout.write() for inputs and print() to display detailed analysis with each condition result and final decision.

import 'dart:io';

void main() {
  stdout.write("Age: ");
  int age = int.parse(stdin.readLineSync()!);

  stdout.write("Experience (years): ");
  int exp = int.parse(stdin.readLineSync()!);

  stdout.write("Salary: ");
  int salary = int.parse(stdin.readLineSync()!);

  stdout.write("Department (IT/HR/Sales): ");
  String dept = stdin.readLineSync()!;

  bool c1 = age >= 25 && exp >= 5;
  bool c2 = salary >= 40000 && dept == "IT";
  bool c3 = exp >= 7 || salary >= 50000;

  bool finalEligible = c1 && (c2 || c3);

  print("\nCondition 1: $c1");
  print("Condition 2: $c2");
  print("Condition 3: $c3");
  print("Final Eligibility: $finalEligible");
}
