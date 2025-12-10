//* Question 13: Password Attempts with Break
//* Give user 3 attempts to enter correct password (hardcode password as "dart123"). Use a for loop with break. If correct password entered, break and show success. After 3 wrong attempts, show "Account locked".

import 'dart:io';

void main() {
  const correctPassword = 'dart123';
  int attempts = 0;

  while (attempts < 3) {
    print('Enter password: ');
    String inputPassword = stdin.readLineSync()!;

    if (inputPassword == correctPassword) {
      print('Password correct! Access granted.');
      return;
    } else {
      print('Incorrect password. Try again.');
      attempts++;
    }
  }

  print('Account locked.');
}
