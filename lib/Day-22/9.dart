//* Question 9: Interactive Calculator
//* Take two numbers and an operator (+, -, *, /) as input using stdout.write(). Perform calculation. Use \n and \t to display formatted result:
//* ================================
//*      CALCULATION RESULT
//* ================================
//* Number 1:     [num1]
//* Operator:     [op]
//* Number 2:     [num2]
//* --------------------------------
//* Result:       [result]
//* ================================

import 'dart:io';

void main() {
  stdout.write("Enter number 1: ");
  double n1 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter operator (+, -, *, /): ");
  String op = stdin.readLineSync()!;

  stdout.write("Enter number 2: ");
  double n2 = double.parse(stdin.readLineSync()!);

  double result = 0;

  if (op == "+")
    result = n1 + n2;
  else if (op == "-")
    result = n1 - n2;
  else if (op == "*")
    result = n1 * n2;
  else if (op == "/")
    result = n1 / n2;

  print("================================");
  print("     CALCULATION RESULT");
  print("================================");
  print("Number 1:\t$n1");
  print("Operator:\t$op");
  print("Number 2:\t$n2");
  print("--------------------------------");
  print("Result:\t\t$result");
  print("================================");
}
