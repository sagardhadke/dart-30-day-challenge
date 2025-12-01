//* Question 3: Age Category Checker
//* Take user's name and age as input. Use nested ternary operators to categorize: age < 5 ? "Toddler" : age < 13 ? "Child" : age < 20 ? "Teenager" : age < 60 ? "Adult" : "Senior". Calculate birth year (2025 - age). Use print() to display formatted output:
//* Name: [name]
//* Age: [age] years
//* Category: [category]
//* Birth Year: [year]

import 'dart:io';

void main() {
  stdout.write("Enter your name: ");
  String name = stdin.readLineSync()!;

  stdout.write("Enter your age: ");
  int age = int.parse(stdin.readLineSync()!);

  String category = age < 5
      ? "Toddler"
      : age < 13
      ? "Child"
      : age < 20
      ? "Teenager"
      : age < 60
      ? "Adult"
      : "Senior";

  int birthYear = 2025 - age;

  print("\n----- USER DETAILS -----");
  print("Name: $name");
  print("Age: $age years");
  print("Category: $category");
  print("Birth Year: $birthYear");
}
