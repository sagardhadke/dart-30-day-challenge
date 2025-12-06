//* Question 2: Simple Menu Display
//* Create a calculator menu using escape sequences. Use \n for new lines and \t for indentation:
//* CALCULATOR MENU
//*     1. Addition
//*     2. Subtraction
//*     3. Multiplication
//*     4. Division
//*     5. Exit
//* Take user's choice as input using stdout.write("Enter choice: ").

import 'dart:io';

void main() {
  print("CALCULATOR MENU");
  print("\t1. Addition");
  print("\t2. Subtraction");
  print("\t3. Multiplication");
  print("\t4. Division");
  print("\t5. Exit");

  stdout.write("Enter choice: ");
  int choice = int.parse(stdin.readLineSync()!);

  print("You selected: $choice");
}
