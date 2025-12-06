//* Question 7: Address Formatter
//* Take street address, city, state, and PIN code as inputs. Use \n to display formatted address with each component on a new line.

import 'dart:io';

void main() {
  stdout.write("Enter street address: ");
  String street = stdin.readLineSync()!;

  stdout.write("Enter city: ");
  String city = stdin.readLineSync()!;

  stdout.write("Enter state: ");
  String state = stdin.readLineSync()!;

  stdout.write("Enter PIN code: ");
  String pin = stdin.readLineSync()!;

  print("\nYour Address:");
  print("$street\n$city\n$state\n$pin");
}
