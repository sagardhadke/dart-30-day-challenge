//* Q15. Formatted Output: Take name, age, and city as input (use stdout.write() for prompts). Use print() to display formatted profile:
//*    Name: [name]
//*    Age: [age]
//*    City: [city]

import 'dart:io';

void main() {
  stdout.write("Enter name: ");
  String name = stdin.readLineSync()!;

  stdout.write("Enter age: ");
  String age = stdin.readLineSync()!;

  stdout.write("Enter city: ");
  String city = stdin.readLineSync()!;

  print("Name: $name");
  print("Age: $age");
  print("City: $city");
}
