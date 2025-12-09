//* Question 20: Pattern Master - Multiple Patterns
//* Create a program that shows menu of different patterns using do-while:
//* 1. Right Triangle
//* 2. Inverted Triangle
//* 3. Pyramid
//* 4. Diamond
//* 5. Hollow Square
//* 6. Number Triangle
//* 7. Floyd's Triangle
//* 8. Exit
//*
//* User selects pattern number, enters size/rows, and program prints that pattern. Keep showing menu until user exits. Use appropriate loops (for/while/nested) for each pattern.
//*
//* For each pattern:
//* - Right Triangle: * pattern increasing
//* - Inverted Triangle: * pattern decreasing
//* - Pyramid: centered * pattern
//* - Diamond: combined pyramid and inverted pyramid
//* - Hollow Square: * border with spaces inside
//* - Number Triangle: 1, 12, 123, 1234...
//* - Floyd's Triangle: 1, 2 3, 4 5 6...
//*
//* Display clean formatted output for each pattern with proper spacing.

import 'dart:io';

void rightTriangle(int n) {
  for (int i = 1; i <= n; i++) {
    print("*" * i);
  }
}

void invertedTriangle(int n) {
  for (int i = n; i >= 1; i--) {
    print("*" * i);
  }
}

void pyramid(int n) {
  for (int i = 1; i <= n; i++) {
    stdout.write(" " * (n - i));
    stdout.write("*" * (2 * i - 1));
    print("");
  }
}

void diamond(int n) {
  for (int i = 1; i <= n; i++) {
    stdout.write(" " * (n - i));
    stdout.write("*" * (2 * i - 1));
    print("");
  }
  for (int i = n - 1; i >= 1; i--) {
    stdout.write(" " * (n - i));
    stdout.write("*" * (2 * i - 1));
    print("");
  }
}

void hollowSquare(int n) {
  for (int i = 1; i <= n; i++) {
    for (int j = 1; j <= n; j++) {
      stdout.write((i == 1 || i == n || j == 1 || j == n) ? "*" : " ");
    }
    print("");
  }
}

void numberTriangle(int n) {
  for (int i = 1; i <= n; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write(j);
    }
    print("");
  }
}

void floydTriangle(int n) {
  int num = 1;
  for (int i = 1; i <= n; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write("$num ");
      num++;
    }
    print("");
  }
}

void main() {
  int choice;
  do {
    print("\nPattern Menu:");
    print("1. Right Triangle");
    print("2. Inverted Triangle");
    print("3. Pyramid");
    print("4. Diamond");
    print("5. Hollow Square");
    print("6. Number Triangle");
    print("7. Floyd's Triangle");
    print("8. Exit");
    stdout.write("Enter choice: ");
    choice = int.parse(stdin.readLineSync()!);

    if (choice >= 1 && choice <= 7) {
      stdout.write("Enter size/rows: ");
      int n = int.parse(stdin.readLineSync()!);
      if (choice == 1) rightTriangle(n);
      if (choice == 2) invertedTriangle(n);
      if (choice == 3) pyramid(n);
      if (choice == 4) diamond(n);
      if (choice == 5) hollowSquare(n);
      if (choice == 6) numberTriangle(n);
      if (choice == 7) floydTriangle(n);
    } else if (choice != 8) {
      print("Invalid choice");
    }
  } while (choice != 8);
}
