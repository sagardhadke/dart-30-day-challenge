//* Question 6: Voting Eligibility
//* Take age as input. Use if-else:
//* - If age >= 18, print "You are eligible to vote"
//* - Else print "You are not eligible to vote. Wait X more years" (calculate X = 18 - age)
//* Test with: 20, 16, 18

import 'dart:io';

void main() {
  stdout.write("Enter age: ");
  int age = int.parse(stdin.readLineSync()!);

  if (age >= 18) {
    print("You are eligible to vote");
  } else {
    int waitYears = 18 - age;
    print("You are not eligible to vote. Wait $waitYears more years");
  }
}
