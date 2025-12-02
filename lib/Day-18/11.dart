//* Question 11: Advanced Calculator with Validation
//* Build a calculator that takes two numbers and an operator (+, -, *, /, %, ~/) as input using stdout.write(). Validate:
//*
//* Numbers should not be 0 for division operations
//* Operator must be valid
//*
//* Perform calculation using appropriate operator. Use comparison operators to check for special cases:
//*
//* If result > 1000, add "Large result" message
//* If result < 0, add "Negative result" message
//* If result == 0, add "Zero result" message
//*
//* Use ternary operators for result categorization. Display formatted output with input values, operation performed, result, and category message.

import 'dart:io';

void main() {
  stdout.write("Enter number 1: ");
  double a = double.parse(stdin.readLineSync()!);

  stdout.write("Enter number 2: ");
  double b = double.parse(stdin.readLineSync()!);

  stdout.write("Enter operator (+, -, *, /, %, ~/): ");
  String op = stdin.readLineSync()!;

  if (!(["+", "-", "*", "/", "%", "~/"].contains(op))) {
    print("Invalid operator!");
    return;
  }

  if ((op == "/" || op == "%" || op == "~/") && b == 0) {
    print("Error: division by zero not allowed!");
    return;
  }

  dynamic result;
  switch (op) {
    case "+":
      result = a + b;
      break;
    case "-":
      result = a - b;
      break;
    case "*":
      result = a * b;
      break;
    case "/":
      result = a / b;
      break;
    case "%":
      result = a % b;
      break;
    case "~/":
      result = a ~/ b;
      break;
  }

  String category = result > 1000
      ? "Large result"
      : result < 0
      ? "Negative result"
      : result == 0
      ? "Zero result"
      : "Normal";

  print("""
============================
      CALCULATOR RESULT    
============================
Input 1: $a
Input 2: $b
Operator: $op
Result: $result
Category: $category
============================
""");
}
