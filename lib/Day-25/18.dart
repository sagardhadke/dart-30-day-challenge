//* Question 18: Floyd's Triangle
//* Print Floyd's Triangle (numbers in triangular form):
//* 1
//* 2 3
//* 4 5 6
//* 7 8 9 10
//* 11 12 13 14 15
//* Take number of rows as input. Use nested loops.

import 'dart:io';

void main() {
  stdout.write("Enter number of rows: ");
  int rows = int.parse(stdin.readLineSync()!);
  int num = 1;
  for (int i = 1; i <= rows; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write("$num ");
      num++;
    }
    print("");
  }
}
