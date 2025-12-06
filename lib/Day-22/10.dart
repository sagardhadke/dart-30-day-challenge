//* Question 10: Multi-line Message Creator
//* Take 5 lines of text as input (use 5 separate inputs). Store in a list. Display all lines using a single print() statement with \n separating each line. Show the difference between using multiple print() calls vs one print() with \n.

import 'dart:io';

void main() {
  List<String> lines = [];

  for (int i = 1; i <= 5; i++) {
    stdout.write("Enter line $i: ");
    lines.add(stdin.readLineSync()!);
  }

  print("\nUsing single print():");
  print(lines.join("\n"));

  print("\nUsing multiple print() calls:");
  for (var line in lines) {
    print(line);
  }
}
