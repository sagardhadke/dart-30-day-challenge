//* Question 14: Hollow Square Pattern
//* Print a hollow square pattern:
//* *****
//* *   *
//* *   *
//* *   *
//* *****
//* Take size as input (e.g., 5 for 5x5 square).

import 'dart:io';

void main() {
  stdout.write("Enter size: ");
  int n = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= n; i++) {
    for (int j = 1; j <= n; j++) {
      if (i == 1 || i == n || j == 1 || j == n) {
        stdout.write("*");
      } else {
        stdout.write(" ");
      }
    }
    print("");
  }
}
