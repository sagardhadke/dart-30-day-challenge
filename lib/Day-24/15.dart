//* Question 15: Nested Loop - Pattern Printing
//* Use nested for loops to print this pattern:
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
