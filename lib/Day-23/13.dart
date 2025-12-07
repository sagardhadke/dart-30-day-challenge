//* Question 13: Leap Year Checker
//* Take a year as input. Use nested if-else to check if it's a leap year:
//* - If year is divisible by 400, it's a leap year
//* - Else if year is divisible by 100, it's not a leap year
//* - Else if year is divisible by 4, it's a leap year
//* - Else it's not a leap year
//* Logic: (year % 400 == 0) || ((year % 4 == 0) && (year % 100 != 0))
//* Display whether it's a leap year or not.
//* Test with: 2024, 2023, 2000, 1900

import 'dart:io';

void main() {
  stdout.write("Enter a year: ");
  int year = int.parse(stdin.readLineSync()!);

  if (year % 400 == 0) {
    print("$year is a leap year");
  } else if (year % 100 == 0) {
    print("$year is NOT a leap year");
  } else if (year % 4 == 0) {
    print("$year is a leap year");
  } else {
    print("$year is NOT a leap year");
  }
}
