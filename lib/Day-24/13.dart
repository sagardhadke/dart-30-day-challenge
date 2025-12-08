//* Question 13: Factorial Calculator
//* Take a number as input (e.g., 5). Use a for loop to calculate its factorial (5! = 5*4*3*2*1 = 120). Print the result.

import 'dart:io';

void main() {
  print('Enter a number:');
  int num = int.parse(stdin.readLineSync()!);
  int factorial = 1;

  for (int i = 1; i <= num; i++) {
    factorial *= i;
  }

  print('Factorial of $num is: $factorial');
}
