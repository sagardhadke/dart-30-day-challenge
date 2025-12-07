//* Question 1: Number Sign Checker
//* Take a number as input. Use if-else to check:
//* - If number > 0, print "Positive number"
//* - If number < 0, print "Not a positive number"
//* - If number == 0, print "Zero"
//* Test with: 10, -5, 0

import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  int n = int.parse(stdin.readLineSync()!);

  if (n > 0) {
    print("Positive number");
  } else if (n < 0) {
    print("Not a positive number");
  } else {
    print("Zero");
  }
}
