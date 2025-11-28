//* Q3. Take two numbers as input from user. Add them and print the sum.

import 'dart:io';

void main() {
  print("Enter first number:");
  int a = int.parse(stdin.readLineSync()!);

  print("Enter second number:");
  int b = int.parse(stdin.readLineSync()!);

  print("Sum = ${a + b}");
}
