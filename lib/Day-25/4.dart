//* Question 4: Right Triangle Pattern
//* Print a right-angled triangle pattern using stars:
//* *
//* **
//* ***
//* ****
//* *****
//* Take number of rows as input.

import 'dart:io';

void main() {
  stdout.write("Enter number of rows: ");
  int rows = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= rows; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write("*");
    }
    print("");
  }
}
