//* Q5. Take a number as input. Check if it's greater than 10 or not. Print the result.

import 'dart:io';

void main() {
  print("Enter a number:");
  int n = int.parse(stdin.readLineSync()!);

  print(n > 10 ? "Greater than 10" : "Not greater than 10");
}
