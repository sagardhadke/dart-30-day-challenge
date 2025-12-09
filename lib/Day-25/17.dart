//* Question 17: Password Validator with Do-While
//* Create a password validation system using do-while loop. Password rules:
//* - Minimum 8 characters
//* - Must contain at least one digit
//* Keep asking user to enter password until valid password is entered. Display which rule is failing if invalid.

import 'dart:io';

void main() {
  String password;
  RegExp digit = RegExp(r'\d');
  do {
    stdout.write("Enter password: ");
    password = stdin.readLineSync()!;
    if (password.length < 8) {
      print("Password must be at least 8 characters");
    } else if (!digit.hasMatch(password)) {
      print("Password must contain at least one digit");
    } else {
      break;
    }
  } while (true);
  print("Password is valid");
}
