//* Q9. You have:
// int a = 7;
// int b = 2;
// Find:
// power (a²)
// square root of a
// floor and ceil of their division (a / b)

import 'dart:math';

void main() {
  int a = 7;
  int b = 2;

  int power = a * a;
  double sqrtValue = sqrt(a);

  double division = a / b;
  int floorValue = division.floor();
  int ceilValue = division.ceil();

  print("a² = $power");
  print("√a = $sqrtValue");
  print("Floor of a/b = $floorValue");
  print("Ceil of a/b = $ceilValue");
}
