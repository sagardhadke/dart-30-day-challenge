//* Question 12: Pyramid Pattern
//* Print a pyramid pattern of stars:
//*     *
//*    ***
//*   *****
//*  *******
//* *********
//* Take number of rows as input. (Use spaces and stars)

import 'dart:io';

void main() {
  stdout.write("Enter number of rows: ");
  int rows = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= rows; i++) {
    stdout.write(" " * (rows - i));
    stdout.write("*" * (2 * i - 1));
    print("");
  }
}
