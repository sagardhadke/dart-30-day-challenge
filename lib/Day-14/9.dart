//* Q9. Take three numbers as input from user. Find and print the largest number among them.

import 'dart:io';

void main() {
  print("Enter number 1:");
  double a = double.parse(stdin.readLineSync()!);

  print("Enter number 2:");
  double b = double.parse(stdin.readLineSync()!);

  print("Enter number 3:");
  double c = double.parse(stdin.readLineSync()!);

  double largest = (a > b && a > c) ? a : (b > c ? b : c);
  print("Largest = $largest");
}
