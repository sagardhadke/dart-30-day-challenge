//* Question 5: Calculator Using Switch
//* Take two numbers and an operator (+, -, *, /) as input. Use switch case to perform the operation and print result. Add default case for invalid operator.

import 'dart:io';

void main() {
  print('Enter first number: ');
  double num1 = double.parse(stdin.readLineSync()!);

  print('Enter second number: ');
  double num2 = double.parse(stdin.readLineSync()!);

  print('Enter operator (+, -, *, /): ');
  String operator = stdin.readLineSync()!;

  double result;

  switch (operator) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      if (num2 != 0) {
        result = num1 / num2;
      } else {
        print('Cannot divide by zero');
        return;
      }
      break;
    default:
      print('Invalid operator');
      return;
  }

  print('Result: $result');
}
