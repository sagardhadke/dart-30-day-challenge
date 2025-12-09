//* Question 11: Do-While Menu System
//* Create a simple menu using do-while loop:
//* 1. Display Message
//* 2. Calculate Sum
//* 3. Exit
//* Keep showing menu until user chooses option 3. Execute appropriate action for each choice.

import 'dart:io';

void main() {
  int choice;
  do {
    print("Menu:");
    print("1. Display Message");
    print("2. Calculate Sum");
    print("3. Exit");
    stdout.write("Enter choice: ");
    choice = int.parse(stdin.readLineSync()!);

    if (choice == 1) {
      print("Hello from Dart Menu!");
    } else if (choice == 2) {
      stdout.write("Enter two numbers: ");
      List<String> inputs = stdin.readLineSync()!.split(" ");
      int a = int.parse(inputs[0]);
      int b = int.parse(inputs[1]);
      print("Sum = ${a + b}");
    } else if (choice != 3) {
      print("Invalid choice");
    }
  } while (choice != 3);
}
