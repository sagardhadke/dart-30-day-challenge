//* Q16. Take a number as input. Check if it's even or odd using modulus operator and print the result.

import 'dart:io';

void main() {
  print("Enter a number:");
  int n = int.parse(stdin.readLineSync()!);

  print(n % 2 == 0 ? "Even" : "Odd");
}
