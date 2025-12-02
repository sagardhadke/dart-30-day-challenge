//* Question 2: Comparison Operators Practice
//* Take three numbers as input. Compare them using all comparison operators (==, !=, >, <, >=, <=). Print at least 8 different comparisons with meaningful messages. For example: "Is first number equal to second?", "Is second greater than third?", etc.

import 'dart:io';

void main() {
  stdout.write("Enter number 1: ");
  int a = int.parse(stdin.readLineSync()!);

  stdout.write("Enter number 2: ");
  int b = int.parse(stdin.readLineSync()!);

  stdout.write("Enter number 3: ");
  int c = int.parse(stdin.readLineSync()!);

  print("\n=== Comparison Results ===");
  print("a == b: ${a == b}");
  print("a != c: ${a != c}");
  print("b > a: ${b > a}");
  print("c < b: ${c < b}");
  print("a >= c: ${a >= c}");
  print("b <= c: ${b <= c}");
  print("Is first number equal to second? ${a == b}");
  print("Is second greater than third? ${b > c}");
}
