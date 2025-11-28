//* Q6. Take user's birth year as input. Calculate their age (2025 - birth year) and print it.

import 'dart:io';

void main() {
  print("Enter birth year:");
  int year = int.parse(stdin.readLineSync()!);

  int age = 2025 - year;
  print("Your age is $age");
}
