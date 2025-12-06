//* Question 14: Formatted Contact List
//* Take 3 contacts (name and phone) as input. Store in a map. Display using escape sequences with proper alignment:
//* ================================
//*       CONTACT LIST
//* ================================
//* Name              Phone
//* [name1]           [phone1]
//* [name2]           [phone2]
//* [name3]           [phone3]
//* ================================

import 'dart:io';

void main() {
  Map<String, String> contacts = {};

  for (int i = 1; i <= 3; i++) {
    stdout.write("Enter name $i: ");
    String name = stdin.readLineSync()!;

    stdout.write("Enter phone for $name: ");
    String phone = stdin.readLineSync()!;

    contacts[name] = phone;
  }

  print("================================");
  print("      CONTACT LIST");
  print("================================");
  print("Name\t\tPhone");
  contacts.forEach((name, phone) {
    print("$name\t\t$phone");
  });
  print("================================");
}
