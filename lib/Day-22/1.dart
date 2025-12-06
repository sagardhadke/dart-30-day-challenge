//* Question 1: Personal Information Card
//* Take user's full name, age, phone number, and email as input using stdout.write(). Use escape sequences \n and \t to display a formatted information card:
//* ================================
//*     PERSONAL INFORMATION
//* ================================
//* Name:     [name]
//* Age:      [age] years
//* Phone:    [phone]
//* Email:    [email]
//* ================================

import 'dart:io';

void main() {
  stdout.write("Enter your full name: ");
  String name = stdin.readLineSync()!;

  stdout.write("Enter your age: ");
  int age = int.parse(stdin.readLineSync()!);

  stdout.write("Enter your phone number: ");
  String phone = stdin.readLineSync()!;

  stdout.write("Enter your email: ");
  String email = stdin.readLineSync()!;

  print("================================");
  print("    PERSONAL INFORMATION");
  print("================================");
  print("Name:\t$name");
  print("Age:\t$age years");
  print("Phone:\t$phone");
  print("Email:\t$email");
  print("================================");
}
