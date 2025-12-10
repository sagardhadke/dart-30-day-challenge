//* Question 4: Break in While Loop
//* Use a while loop to keep taking numbers as input. Break the loop when user enters 0. Print sum of all numbers entered (excluding 0).

import 'dart:io';

void main() {
  int sum = 0;
  while (true) {
    print('Enter a number (0 to stop): ');
    int num = int.parse(stdin.readLineSync()!);
    if (num == 0) break;
    sum += num;
  }
  print('Sum of all numbers: $sum');
}
