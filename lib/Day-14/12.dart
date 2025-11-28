//* Q12. Take length and width of a rectangle as input. Calculate and print area and perimeter.

import 'dart:io';

void main() {
  print("Enter length:");
  double l = double.parse(stdin.readLineSync()!);

  print("Enter width:");
  double w = double.parse(stdin.readLineSync()!);

  double area = l * w;
  double perimeter = 2 * (l + w);

  print("Area = $area");
  print("Perimeter = $perimeter");
}
