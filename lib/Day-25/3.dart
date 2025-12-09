//* Question 3: Square Pattern
//* Print a square pattern of stars with 5 rows and 5 columns using nested loops:
//* *****
//* *****
//* *****
//* *****
//* *****

import 'dart:io';

void main() {
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      stdout.write("*");
    }
    print("");
  }
}
