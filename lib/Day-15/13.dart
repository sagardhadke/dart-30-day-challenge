//* Q13. Calculator Menu: Create a calculator interface. Use print() for menu options (each on new line). Use stdout.write() for prompts like "Enter first number: ".

import 'dart:io';

void main() {
  print("1. Add");
  print("2. Subtract");
  print("3. Multiply");
  print("4. Divide");

  stdout.write("Enter first number: ");
  String? a = stdin.readLineSync();

  stdout.write("Enter second number: ");
  String? b = stdin.readLineSync();
}
