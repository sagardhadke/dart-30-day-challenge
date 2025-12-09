//* Question 8: Inverted Triangle Pattern
//* Print an inverted right-angled triangle:
//* *****
//* ****
//* ***
//* **
//* *
//* Take number of rows as input.

import 'dart:io';

void main() {
  stdout.write("Enter number of rows: ");
  int rows = int.parse(stdin.readLineSync()!);
  for (int i = rows; i >= 1; i--) {
    for (int j = 1; j <= i; j++) {
      stdout.write("*");
    }
    print("");
  }
}
