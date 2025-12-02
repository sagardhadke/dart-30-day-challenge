//* Question 6: Compound Assignment Calculator
//* Take a starting number as input. Apply compound assignment operators in sequence:
//*
//* Add 50 using +=
//* Multiply by 3 using *=
//* Subtract 20 using -=
//* Divide by 2 using ~/= (integer division)
//* Find modulus with 7 using %=
//* Print the result after each operation showing the step-by-step transformation.

import 'dart:io';

void main() {
  stdout.write("Enter starting number: ");
  int n = int.parse(stdin.readLineSync()!);

  print("Start: $n");
  n += 50;
  print("After += 50: $n");

  n *= 3;
  print("After *= 3: $n");

  n -= 20;
  print("After -= 20: $n");

  n ~/= 2;
  print("After ~/= 2: $n");

  n %= 7;
  print("After %= 7: $n");
}
