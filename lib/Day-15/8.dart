//* Q8. Use stdout.write() to ask "Enter your age: " (prompt stays on same line). Take input and print the age using print().

import 'dart:io';

void main() {
  stdout.write("Enter your age: ");
  String age = stdin.readLineSync()!;
  print("Your age is $age");
}
