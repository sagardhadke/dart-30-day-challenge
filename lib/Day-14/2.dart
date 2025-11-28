//* Q2. Take user's age as input (as String, then convert to int using int.parse()). Print the age.

import 'dart:io';

void main() {
  print("Enter your age:");
  int age = int.parse(stdin.readLineSync()!);
  print("Your age is $age");
}
