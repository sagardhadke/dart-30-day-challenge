//* Q15. Take product price and discount percentage as input. Calculate final price after discount and print it.

import 'dart:io';

void main() {
  print("Enter product price:");
  double price = double.parse(stdin.readLineSync()!);

  print("Enter discount percentage:");
  double disc = double.parse(stdin.readLineSync()!);

  double finalPrice = price - (price * disc / 100);

  print("Final Price = $finalPrice");
}
