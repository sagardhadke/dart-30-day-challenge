//* Q20. Take age as input. Check eligibility for voting using: age >= 18. If eligible, print "You can vote", else print "You cannot vote. Wait [X] more years" (calculate X).

import 'dart:io';

void main() {
  print("Enter your age:");
  int age = int.parse(stdin.readLineSync()!);

  if (age >= 18) {
    print("You can vote");
  } else {
    int wait = 18 - age;
    print("You cannot vote. Wait $wait more years");
  }
}
