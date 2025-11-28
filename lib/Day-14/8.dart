//* Q8. Take user's height in meters as input (use double.parse()). Print the height.

import 'dart:io';

void main() {
  print("Enter height in meters:");
  double h = double.parse(stdin.readLineSync()!);

  print("Height = $h meters");
}
