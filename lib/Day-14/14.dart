//* Q14. Take temperature in Celsius as input. Convert to Fahrenheit using formula: F = (C × 9/5) + 32. Print both temperatures.

import 'dart:io';

void main() {
  print("Enter temperature in Celsius:");
  double c = double.parse(stdin.readLineSync()!);

  double f = (c * 9 / 5) + 32;

  print("Celsius: $c");
  print("Fahrenheit: $f");
}
