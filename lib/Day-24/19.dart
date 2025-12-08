//* Question 19: Fibonacci Series Generator
//* Take a number n as input. Use a for loop to generate and print the first n numbers of Fibonacci series.
//* Fibonacci series: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34...
//* (Each number is sum of previous two numbers)
//* Test with: n = 10

import 'dart:io';

void main() {
  print('Enter a number for Fibonacci series length:');
  int n = int.parse(stdin.readLineSync()!);

  List<int> fib = [0, 1];

  for (int i = 2; i < n; i++) {
    fib.add(fib[i - 1] + fib[i - 2]);
  }

  print('First $n Fibonacci numbers: $fib');
}
