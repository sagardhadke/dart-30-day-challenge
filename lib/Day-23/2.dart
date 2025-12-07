//* Question 2: Age Category
//* Take age as input. Use if-else to determine category:
//* - If age < 13, print "Child"
//* - If age >= 13 and age < 20, print "Teenager"
//* - If age >= 20 and age < 60, print "Adult"
//* - If age >= 60, print "Senior Citizen"
//* Test with: 10, 16, 35, 65

import 'dart:io';

void main() {
  stdout.write("Enter age: ");
  int age = int.parse(stdin.readLineSync()!);

  if (age < 13) {
    print("Child");
  } else if (age < 20) {
    print("Teenager");
  } else if (age < 60) {
    print("Adult");
  } else {
    print("Senior Citizen");
  }
}
