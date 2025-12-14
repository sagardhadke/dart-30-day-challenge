//* Question 3: Number Pattern and Calculator
//* Use nested for loops to print pattern:
//* 1
//* 22
//* 333
//* 4444
//* 55555
//* Take number of rows as input. Then create a function calculate() that takes two numbers and operator. Use switch case to perform operation and return result.

import 'dart:io';

int calculate(int a, int b, String op) {
  switch (op) {
    case '+':
      return a + b;
    case '-':
      return a - b;
    case '*':
      return a * b;
    case '/':
      return a ~/ b;
    default:
      return 0;
  }
}

void main() {
  stdout.write("Enter rows: ");
  int rows = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= rows; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write(i);
    }
    print("");
  }

  stdout.write("\nEnter num1: ");
  int a = int.parse(stdin.readLineSync()!);
  stdout.write("Enter num2: ");
  int b = int.parse(stdin.readLineSync()!);
  stdout.write("Enter operator (+ - * /): ");
  String op = stdin.readLineSync()!;

  print("Result: ${calculate(a, b, op)}");
}
