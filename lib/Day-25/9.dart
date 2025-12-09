//* Question 9: Number Pattern
//* Print this number pattern:
//* 1
//* 12
//* 123
//* 1234
//* 12345
//* Take number of rows as input.

import 'dart:io';

void main() {
  stdout.write("Enter number of rows: ");
  int rows = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= rows; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write(j);
    }
    print("");
  }
}
