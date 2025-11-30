//* Question 1: Personal Profile Builder
//* Take user's name, age, city, and phone number as input using stdout.write() prompts. Store all data in a map. Calculate birth year (2025 - age). Check if user is adult (age >= 18) using ternary operator. Use print() to display a formatted profile card:
//* ================================
//*    PROFILE CARD
//* ================================
//* Name: [name]
//* Age: [age] years
//* Birth Year: [year]
//* City: [city]
//* Phone: [phone]
//* Status: [Adult/Minor]
//* ================================

import 'dart:io';

void main() {
  stdout.write("Enter your name: ");
  String name = stdin.readLineSync()!;

  stdout.write("Enter your age: ");
  int age = int.parse(stdin.readLineSync()!);

  stdout.write("Enter your city: ");
  String city = stdin.readLineSync()!;

  stdout.write("Enter your phone number: ");
  String phone = stdin.readLineSync()!;

  Map<String, dynamic> profile = {
    'name': name,
    'age': age,
    'city': city,
    'phone': phone,
  };

  int birthYear = 2025 - age;
  String status = age >= 18 ? "Adult" : "Minor";

  print("\n================================");
  print("         PROFILE CARD");
  print("================================");
  print("Name: ${profile['name']}");
  print("Age: ${profile['age']} years");
  print("Birth Year: $birthYear");
  print("City: ${profile['city']}");
  print("Phone: ${profile['phone']}");
  print("Status: $status");
  print("================================\n");
}
