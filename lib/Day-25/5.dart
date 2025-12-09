//* Question 5: Countdown Using While
//* Take a number as input. Use a while loop to print countdown from that number to 1. Example: If input is 10, print 10, 9, 8, 7, 6, 5, 4, 3, 2, 1.

import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  int n = int.parse(stdin.readLineSync()!);
  while (n >= 1) {
    print(n);
    n--;
  }
}
