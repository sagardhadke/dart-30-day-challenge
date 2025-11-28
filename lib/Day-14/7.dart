//* Q7. Take a product name and its price as input from user. Print them in format: "Product: [name], Price: Rs. [price]".

import 'dart:io';

void main() {
  print("Enter product name:");
  String name = stdin.readLineSync()!;

  print("Enter price:");
  double price = double.parse(stdin.readLineSync()!);

  print("Product: $name, Price: Rs. $price");
}
