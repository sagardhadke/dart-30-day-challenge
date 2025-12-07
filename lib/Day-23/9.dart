//* Question 9: Basic Calculator
//* Take two numbers and an operator (+, -, *, /) as input. Use if-else to perform operations:
//* - If operator is '+', add the numbers
//* - Else if operator is '-', subtract
//* - Else if operator is '*', multiply
//* - Else if operator is '/', divide (check if second number is not 0)
//* - Else print "Invalid operator"
//* Display the result in format: "num1 operator num2 = result"
//* Test with: 10 + 5, 20 - 8, 6 * 7, 15 / 3, 10 / 0

import 'dart:io';

void main() {
  stdout.write("Enter number 1: ");
  double n1 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter operator (+, -, *, /): ");
  String op = stdin.readLineSync()!;

  stdout.write("Enter number 2: ");
  double n2 = double.parse(stdin.readLineSync()!);

  double result;

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
  } else {
    print("Invalid operator");
    return;
  }

  print("$n1 $op $n2 = $result");
}
