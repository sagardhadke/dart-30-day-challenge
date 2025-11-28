//* Q10. Take user's marks as input. Check if marks >= 40, print "Pass" else print "Fail".

import 'dart:io';

void main() {
  print("Enter marks:");
  int marks = int.parse(stdin.readLineSync()!);

  print(marks >= 40 ? "Pass" : "Fail");
}
