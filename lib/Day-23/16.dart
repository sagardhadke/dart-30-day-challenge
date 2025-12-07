//* Question 16: Advanced Calculator with Multiple Operations
//* Create a calculator that takes two numbers and operator as input.
//* Use nested if-else to handle:
//* Basic operations: +, -, *, /
//* Advanced operations: % (modulus), ** (power - use num1 * num1 for square)
//* Special cases:
//* - For division, check if num2 == 0, display error
//* - For modulus, check if num2 == 0, display error
//* - For power, if operator is '**', calculate num1 raised to num2 (manual calculation for power of 2 or 3)
//* Display result in formatted way:
//* ================================
//*     CALCULATOR RESULT
//* ================================
//* Number 1:     [num1]
//* Operator:     [operator]
//* Number 2:     [num2]
//* --------------------------------
//* Result:       [result]
//* ================================
//* If invalid operator, display error message.
//* Test with: 10+5, 20-8, 6*7, 15/3, 15/0, 17%5, 2**3

import 'dart:io';

void main() {
  stdout.write("Enter number 1: ");
  double n1 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter operator (+, -, *, /, %, **): ");
  String op = stdin.readLineSync()!;

  stdout.write("Enter number 2: ");
  double n2 = double.parse(stdin.readLineSync()!);

  dynamic result;

  if (op == '+') {
    result = n1 + n2;
  } else if (op == '-') {
    result = n1 - n2;
  } else if (op == '*') {
    result = n1 * n2;
  } else if (op == '/') {
    if (n2 == 0) {
      print("Error: Cannot divide by zero");
      return;
    }
    result = n1 / n2;
  } else if (op == '%') {
    if (n2 == 0) {
      print("Error: Modulus by zero not allowed");
      return;
    }
    result = n1 % n2;
  } else if (op == '**') {
    result = n1;
    for (int i = 1; i < n2; i++) {
      result *= n1;
    }
  } else {
    print("Invalid operator");
    return;
  }

  print("================================");
  print("       CALCULATOR RESULT        ");
  print("================================");
  print("Number 1:     $n1");
  print("Operator:     $op");
  print("Number 2:     $n2");
  print("--------------------------------");
  print("Result:       $result");
  print("================================");
}
