//* Question 12: Menu System with Switch
//* Create a menu system using switch case:
//* 1. Add two numbers
//* 2. Find even/odd
//* 3. Check positive/negative
//* 4. Exit
//* Take choice and execute appropriate operation. Use break after each case. Use while loop to keep showing menu until exit.

import 'dart:io';

void main() {
  while (true) {
    print('1. Add two numbers');
    print('2. Find even/odd');
    print('3. Check positive/negative');
    print('4. Exit');
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        print('Enter first number: ');
        int num1 = int.parse(stdin.readLineSync()!);
        print('Enter second number: ');
        int num2 = int.parse(stdin.readLineSync()!);
        print('Sum: ${num1 + num2}');
        break;
      case 2:
        print('Enter a number: ');
        int num = int.parse(stdin.readLineSync()!);
        print(num % 2 == 0 ? 'Even' : 'Odd');
        break;
      case 3:
        print('Enter a number: ');
        int num = int.parse(stdin.readLineSync()!);
        print(num >= 0 ? 'Positive' : 'Negative');
        break;
      case 4:
        print('Exiting...');
        return;
      default:
        print('Invalid choice');
    }
  }
}
