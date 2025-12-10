//* Question 16: Advanced Calculator with Switch
//* Create a comprehensive calculator using switch case:
//* Cases:
//* 1. Addition
//* 2. Subtraction
//* 3. Multiplication
//* 4. Division
//* 5. Modulus
//* 6. Power (num1 ^ num2)
//* 7. Square Root (of first number)
//* 8. Exit
//*
//* Features:
//* - Use while loop to keep calculator running
//* - Take two numbers as input
//* - Use switch for operation selection
//* - Handle division by zero
//* - Use break after each case
//* - Use continue if invalid numbers entered
//* Display result in formatted way.

import 'dart:io';
import 'dart:math';

void main() {
  while (true) {
    print('Select operation:');
    print('1. Addition');
    print('2. Subtraction');
    print('3. Multiplication');
    print('4. Division');
    print('5. Modulus');
    print('6. Power');
    print('7. Square Root');
    print('8. Exit');

    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 8) break;

    print('Enter first number: ');
    double num1 = double.parse(stdin.readLineSync()!);

    if (choice != 7 && choice != 8) {
      print('Enter second number: ');
      double num2 = double.parse(stdin.readLineSync()!);

      switch (choice) {
        case 1:
          print('Result: ${num1 + num2}');
          break;
        case 2:
          print('Result: ${num1 - num2}');
          break;
        case 3:
          print('Result: ${num1 * num2}');
          break;
        case 4:
          if (num2 != 0) {
            print('Result: ${num1 / num2}');
          } else {
            print('Cannot divide by zero.');
          }
          break;
        case 5:
          print('Result: ${num1 % num2}');
          break;
        case 6:
          print('Result: ${pow(num1, num2)}');
          break;
        default:
          print('Invalid choice');
      }
    } else if (choice == 7) {
      print('Result: ${sqrt(num1)}');
    }
  }
  print('Calculator closed.');
}
