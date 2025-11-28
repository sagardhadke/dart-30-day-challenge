//* Q1. Take user's name as input and print "Hello, [name]! Welcome to Dart programming."

import 'dart:io';

void main() {
  print("Enter your name:");
  String name = stdin.readLineSync()!;
  print("Hello, $name! Welcome to Dart programming.");
}
