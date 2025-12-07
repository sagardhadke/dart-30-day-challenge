//* Question 14: Triangle Validator
//* Take three sides of a triangle (a, b, c) as input. Use nested if-else:
//* First check if it's a valid triangle: (a + b > c) && (b + c > a) && (a + c > b)
//* If valid, check triangle type:
//* - If a == b && b == c: "Equilateral triangle"
//* - Else if a == b || b == c || a == c: "Isosceles triangle"
//* - Else: "Scalene triangle"
//* If not valid, print "Not a valid triangle"
//* Test with: 5,5,5 | 5,5,7 | 3,4,5 | 1,2,10

import 'dart:io';

void main() {
  stdout.write("Enter side a: ");
  int a = int.parse(stdin.readLineSync()!);

  stdout.write("Enter side b: ");
  int b = int.parse(stdin.readLineSync()!);

  stdout.write("Enter side c: ");
  int c = int.parse(stdin.readLineSync()!);

  if (a + b > c && b + c > a && a + c > b) {
    if (a == b && b == c) {
      print("Equilateral Triangle");
    } else if (a == b || b == c || a == c) {
      print("Isosceles Triangle");
    } else {
      print("Scalene Triangle");
    }
  } else {
    print("Not a valid triangle");
  }
}
