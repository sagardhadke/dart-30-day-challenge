//* Question 16: Prime Number Checker with Loop
//* Take a number as input. Use a for loop to check if it's a prime number. A prime number is only divisible by 1 and itself. Print whether the number is prime or not.
//* Test with: 7, 10, 13, 20

import 'dart:io';

void main() {
  print('Enter a number:');
  int num = int.parse(stdin.readLineSync()!);

  bool isPrime = true;

  for (int i = 2; i <= num / 2; i++) {
    if (num % i == 0) {
      isPrime = false;
      break;
    }
  }

  if (isPrime && num > 1) {
    print('$num is a prime number.');
  } else {
    print('$num is not a prime number.');
  }
}
