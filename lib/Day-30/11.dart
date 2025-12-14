//* Question 11: Recursive Fibonacci with Menu
//* Create recursive function fibonacci(n). Create menu:
//* 1. Single Fibonacci number
//* 2. Fibonacci series up to n terms
//* 3. Sum of first n Fibonacci numbers
//* 4. Exit
//*
//* Use switch case. For series, use for loop calling fibonacci() function. Use while loop for menu. Display results formatted with escape sequences.

import 'dart:io';

int fibonacci(int n) {
  if (n <= 1) {
    return n;
  }
  return fibonacci(n - 1) + fibonacci(n - 2);
}

void main() {
  bool run = true;

  while (run) {
    print("\n========== FIBONACCI MENU ==========");
    print("1. Single Fibonacci Number");
    print("2. Fibonacci Series up to n terms");
    print("3. Sum of first n Fibonacci numbers");
    print("4. Exit");
    stdout.write("Choose option: ");

    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        stdout.write("Enter n: ");
        int n = int.parse(stdin.readLineSync()!);

        print("\nFibonacci($n) = ${fibonacci(n)}");
        break;

      case 2:
        stdout.write("Enter number of terms: ");
        int n = int.parse(stdin.readLineSync()!);

        print("\nFibonacci Series:");
        for (int i = 0; i < n; i++) {
          stdout.write("${fibonacci(i)} ");
        }
        print("");
        break;

      case 3:
        stdout.write("Enter n: ");
        int n = int.parse(stdin.readLineSync()!);

        int sum = 0;
        for (int i = 0; i < n; i++) {
          sum += fibonacci(i);
        }

        print("\nSum of first $n Fibonacci numbers = $sum");
        break;

      case 4:
        run = false;
        print("\nExiting Fibonacci System");
        break;

      default:
        print("\nInvalid Choice! Try again.");
    }
  }
}
