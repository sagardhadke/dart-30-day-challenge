//* Question 5: Input Output Formatting
//* Use stdout.write() to take 5 inputs: name, age, city, occupation, and salary. Use print() to create a formatted profile card:
//* ================================
//*       PERSONAL PROFILE
//* ================================
//* Name:       [name]
//* Age:        [age] years
//* City:       [city]
//* Occupation: [occupation]
//* Salary:     Rs. [salary]
//* ================================

import 'dart:io';

void main() {
  stdout.write("Enter name: ");
  String name = stdin.readLineSync()!;

  stdout.write("Enter age: ");
  String age = stdin.readLineSync()!;

  stdout.write("Enter city: ");
  String city = stdin.readLineSync()!;

  stdout.write("Enter occupation: ");
  String occupation = stdin.readLineSync()!;

  stdout.write("Enter salary: ");
  String salary = stdin.readLineSync()!;

  print("""
================================
      PERSONAL PROFILE
================================
Name:       $name
Age:        $age years
City:       $city
Occupation: $occupation
Salary:     Rs. $salary
================================
""");
}
