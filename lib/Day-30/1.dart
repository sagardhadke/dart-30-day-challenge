//* Question 1: Personal Information System
//* Take user input for: name, age, city, phone. Store in a map. Use if-else to check if age >= 18 (display "Adult" or "Minor"). Use escape sequences to display formatted profile card. Calculate birth year (2025 - age). Display everything in professional format.

import 'dart:io';

void main() {
  stdout.write("Enter Name: ");
  String name = stdin.readLineSync()!;

  stdout.write("Enter Age: ");
  int age = int.parse(stdin.readLineSync()!);

  stdout.write("Enter City: ");
  String city = stdin.readLineSync()!;

  stdout.write("Enter Phone: ");
  String phone = stdin.readLineSync()!;

  Map<String, dynamic> profile = {
    "Name": name,
    "Age": age,
    "City": city,
    "Phone": phone,
  };

  String status = age >= 18 ? "Adult" : "Minor";
  int birthYear = 2025 - age;

  print("\n==============================");
  print("        PROFILE CARD");
  print("==============================");
  print("Name       : ${profile['Name']}");
  print("Age        : ${profile['Age']}");
  print("City       : ${profile['City']}");
  print("Phone      : ${profile['Phone']}");
  print("Status     : $status");
  print("Birth Year : $birthYear");
  print("==============================");
}
