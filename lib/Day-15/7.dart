//* Q7. Take user's first name and last name as input using two separate prompts with stdout.write(). Print full name using print().

import 'dart:io';

void main() {
  stdout.write("Enter first name: ");
  String first = stdin.readLineSync()!;

  stdout.write("Enter last name: ");
  String last = stdin.readLineSync()!;

  print("Full Name: $first $last");
}
