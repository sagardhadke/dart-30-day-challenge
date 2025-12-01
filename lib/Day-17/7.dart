//* Question 7: Multi-Item Shopping Cart
//* Take number of items as input. For each item, take name, price, and quantity as input. Store appropriately (use list of maps or separate lists). Calculate cost for each item. Find subtotal of all items. Check if subtotal > 2000 using comparison operator. If yes, apply 15% discount, else 5%. Calculate tax (8% on discounted total). Use print() to create professional shopping bill:
//* ================================
//*        SHOPPING BILL
//* ================================
//* [Item details line by line]
//* --------------------------------
//* Subtotal:    Rs. [amount]
//* Discount:    Rs. [amount]
//* After Disc:  Rs. [amount]
//* Tax (8%):    Rs. [amount]
//* ================================
//* GRAND TOTAL: Rs. [amount]
//* ================================

import 'dart:io';

void main() {
  stdout.write("Enter number of items: ");
  int n = int.parse(stdin.readLineSync()!);

  List<Map<String, dynamic>> cart = [];
  double subtotal = 0;

  for (int i = 1; i <= n; i++) {
    stdout.write("Item name: ");
    String name = stdin.readLineSync()!;

    stdout.write("Price: ");
    double price = double.parse(stdin.readLineSync()!);

    stdout.write("Quantity: ");
    int qty = int.parse(stdin.readLineSync()!);

    double cost = price * qty;
    subtotal += cost;

    cart.add({"name": name, "price": price, "qty": qty, "cost": cost});
  }

  double discount = subtotal > 2000 ? subtotal * 0.15 : subtotal * 0.05;
  double afterDisc = subtotal - discount;
  double tax = afterDisc * 0.08;
  double total = afterDisc + tax;

  print("\n================================");
  print("         SHOPPING BILL");
  print("================================");
  cart.forEach((item) {
    print("${item['name']} (x${item['qty']}): Rs. ${item['cost']}");
  });
  print("--------------------------------");
  print("Subtotal:    Rs. $subtotal");
  print("Discount:    Rs. $discount");
  print("After Disc:  Rs. $afterDisc");
  print("Tax (8%):    Rs. $tax");
  print("================================");
  print("GRAND TOTAL: Rs. $total");
  print("================================");
}
