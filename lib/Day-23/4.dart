//* Question 4: Pass or Fail
//* Take student marks (out of 100) as input. Use if-else:
//* - If marks >= 40, print "Pass"
//* - Else print "Fail"
//* Also display the marks.
//* Test with: 65, 38, 40

import 'dart:io';

void main() {
  stdout.write("Enter marks (out of 100): ");
  int marks = int.parse(stdin.readLineSync()!);

  if (marks >= 40) {
    print("Pass");
  } else {
    print("Fail");
  }

  print("Marks: $marks");
}
