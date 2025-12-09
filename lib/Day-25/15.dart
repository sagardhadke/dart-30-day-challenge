//* Question 15: Diamond Pattern
//* Print a diamond pattern of stars:
//*     *
//*    ***
//*   *****
//*  *******
//* *********
//*  *******
//*   *****
//*    ***
//*     *
//* Take number of rows as input (for upper half).

import 'dart:io';

void main() {
  stdout.write("Enter number of rows for upper half: ");
  int rows = int.parse(stdin.readLineSync()!);

  // Upper Half
  for (int i = 1; i <= rows; i++) {
    stdout.write(" " * (rows - i));
    stdout.write("*" * (2 * i - 1));
    print("");
  }

  // Lower Half
  for (int i = rows - 1; i >= 1; i--) {
    stdout.write(" " * (rows - i));
    stdout.write("*" * (2 * i - 1));
    print("");
  }
}
