//* Question 12: Pattern Printing System
//* Create functions for patterns:
//* - rightTriangle(rows) - uses nested for loops
//* - pyramid(rows) - uses for loops with spaces
//* - diamond(rows) - uses for loops
//* - numberPattern(rows) - prints number triangle
//*
//* Menu with switch case to select pattern. Use do-while to keep showing menu. Take pattern size as input. Display selected pattern.

import 'dart:io';

void rightTriangle(int rows) {
  for (int i = 1; i <= rows; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write("*");
    }
    print("");
  }
}

void pyramid(int rows) {
  for (int i = 1; i <= rows; i++) {
    stdout.write(" " * (rows - i));
    stdout.write("*" * (2 * i - 1));
    print("");
  }
}

void diamond(int rows) {
  for (int i = 1; i <= rows; i++) {
    stdout.write(" " * (rows - i));
    stdout.write("*" * (2 * i - 1));
    print("");
  }

  for (int i = rows - 1; i >= 1; i--) {
    stdout.write(" " * (rows - i));
    stdout.write("*" * (2 * i - 1));
    print("");
  }
}

void numberPattern(int rows) {
  for (int i = 1; i <= rows; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write("$i");
    }
    print("");
  }
}

void main() {
  bool run = true;

  do {
    print("\n====== PATTERN PRINTING MENU ======");
    print("1. Right Triangle");
    print("2. Pyramid");
    print("3. Diamond");
    print("4. Number Pattern");
    print("5. Exit");
    stdout.write("Choose pattern: ");

    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 5) {
      run = false;
      print("\n👋 Exiting Pattern Printing System");
      continue;
    }

    stdout.write("Enter number of rows: ");
    int rows = int.parse(stdin.readLineSync()!);

    print("\n------ Pattern Output ------\n");

    switch (choice) {
      case 1:
        rightTriangle(rows);
        break;
      case 2:
        pyramid(rows);
        break;
      case 3:
        diamond(rows);
        break;
      case 4:
        numberPattern(rows);
        break;
      default:
        print("\nInvalid Choice! Try again.");
    }

    print("\n----------------------------\n");
  } while (run);
}
