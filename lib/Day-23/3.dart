//* Question 3: Even or Odd Checker
//* Take a number as input. Use if-else with modulus operator (%) to check:
//* - If number % 2 == 0, print "Even number"
//* - Else print "Odd number"
//* Test with: 24, 17, 0, 100

import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  int num = int.parse(stdin.readLineSync()!);

  if (num % 2 == 0) {
    print("Even number");
  } else {
    print("Odd number");
  }
}
