//* Question 1: Complete Arithmetic Operations
//* Take two numbers as input using stdout.write(). Perform all arithmetic operations: addition, subtraction, multiplication, division, modulus, and integer division. Store each result in separate variables. Use print() to display all results in a formatted manner with proper labels.

import 'dart:io';

void main() {
  stdout.write("Enter first number: ");
  double a = double.parse(stdin.readLineSync()!);

  stdout.write("Enter second number: ");
  double b = double.parse(stdin.readLineSync()!);

  double add = a + b;
  double sub = a - b;
  double mul = a * b;
  double div = a / b;
  double mod = a % b;
  int intDiv = a ~/ b;

  print("\n=== Arithmetic Results ===");
  print("Addition: $add");
  print("Subtraction: $sub");
  print("Multiplication: $mul");
  print("Division: $div");
  print("Modulus: $mod");
  print("Integer Division: $intDiv");
}
