//* Question 5: Simple Receipt
//* Take product name, price, and quantity as input. Calculate total. Use print() to display formatted receipt:
//* ================================
//* Item:     [name]
//* Price:    Rs. [price]
//* Quantity: [qty]
//* Total:    Rs. [total]
//* ================================

import 'dart:io';

void main() {
  stdout.write("Enter product name: ");
  String name = stdin.readLineSync()!;

  stdout.write("Enter price: ");
  double price = double.parse(stdin.readLineSync()!);

  stdout.write("Enter quantity: ");
  int qty = int.parse(stdin.readLineSync()!);

  double total = price * qty;

  print("================================");
  print("Item:\t$name");
  print("Price:\tRs. $price");
  print("Quantity: $qty");
  print("Total:\tRs. $total");
  print("================================");
}
