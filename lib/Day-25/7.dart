//* Question 7: Do-While Input Validator
//* Use a do-while loop to keep asking user for a positive number. Keep asking until user enters a positive number. Print "Valid input received" when positive number is entered.

import 'dart:io';

void main() {
  int number;
  do {
    stdout.write("Enter a positive number: ");
    number = int.parse(stdin.readLineSync()!);
  } while (number <= 0);
  print("Valid input received");
}
