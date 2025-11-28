//* Q4. Take user's favorite color as input and print "Your favorite color is [color]".

import 'dart:io';

void main() {
  print("Enter your favorite color:");
  String color = stdin.readLineSync()!;
  print("Your favorite color is $color");
}
