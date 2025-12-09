//* Question 13: While Loop - Find Factorial
//* Take a number as input. Use a while loop to calculate its factorial. Print the result.

import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  int n = int.parse(stdin.readLineSync()!);
  int factorial = 1;
  int i = 1;
  while (i <= n) {
    factorial *= i;
    i++;
  }
  print("Factorial = $factorial");
}
