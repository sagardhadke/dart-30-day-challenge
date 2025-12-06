//* Question 6: Age Calculator
//* Take birth year as input using stdout.write("Enter birth year: "). Calculate current age (2025 - birth year). Display result using both print() and understand when to use stdout.write() vs print().

import 'dart:io';

void main() {
  stdout.write("Enter birth year: ");
  int birthYear = int.parse(stdin.readLineSync()!);

  int age = 2025 - birthYear;

  print("Your current age is: $age");
}
