//* Question 9: Expression Evaluation Challenge
//* Take three numbers (a, b, c) as input. Calculate and display results of these expressions:
//*
//* (a + b) * c - a / b
//* a % b + c * 2 - b ~/ 2
//* (a > b) && (b < c) || (a == c)
//* a >= b ? a * 2 : b * 2 + c
//* (a + b + c) / 3 and check if result >= 50
//* Show each expression evaluation with the formula and result. Use proper operator precedence.

import 'dart:io';

void main() {
  stdout.write("Enter a: ");
  double a = double.parse(stdin.readLineSync()!);

  stdout.write("Enter b: ");
  double b = double.parse(stdin.readLineSync()!);

  stdout.write("Enter c: ");
  double c = double.parse(stdin.readLineSync()!);

  print("(a + b) * c - a / b = ${(a + b) * c - a / b}");
  print("a % b + c * 2 - b ~/ 2 = ${a % b + c * 2 - b ~/ 2}");
  print("(a > b) && (b < c) || (a == c) = ${(a > b) && (b < c) || (a == c)}");
  print("Ternary: ${a >= b ? a * 2 : b * 2 + c}");
  double avg = (a + b + c) / 3;
  print("Average >= 50 ? ${avg >= 50}");
}
