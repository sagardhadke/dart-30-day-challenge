//* Question 13: Progress Indicator
//* Take a task name as input. Use stdout.write() to print the task name followed by dots (.) printed using multiple stdout.write() calls to show loading effect: "Task name....." then use print() to show "Complete!" on the next line.

import 'dart:io';

void main() {
  stdout.write("Enter task name: ");
  String task = stdin.readLineSync()!;

  stdout.write("$task");
  for (int i = 0; i < 5; i++) {
    stdout.write(".");
  }

  print("\nComplete!");
}
