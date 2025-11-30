//* Question 3: Mini Restaurant Billing System
//* Create a menu map with 6 items and prices. Display menu using print() with proper formatting. Use stdout.write() to ask "How many items to order: ". For each item, take item name and quantity as input. Calculate cost for each item. Find subtotal. Apply discount: subtotal >= 1000 ? 15% : subtotal >= 500 ? 10% : 0%. Add 5% GST. Use print() to generate formatted bill with item-wise details, subtotal, discount, GST, and grand total. Make it look professional.

import 'dart:io';

void main() {
  Map<String, double> menu = {
    'Burger': 150,
    'Pizza': 300,
    'Pasta': 200,
    'Fries': 100,
    'Cold Drink': 50,
    'Sandwich': 120,
  };

  print("\n============== MENU ==============");
  menu.forEach((item, price) {
    print("$item : Rs. $price");
  });
  print("==================================\n");

  stdout.write("How many items to order: ");
  int n = int.parse(stdin.readLineSync()!);

  double subtotal = 0;

  List<Map<String, dynamic>> billItems = [];

  for (int i = 1; i <= n; i++) {
    stdout.write("Enter item name: ");
    String item = stdin.readLineSync()!;

    stdout.write("Enter quantity: ");
    int qty = int.parse(stdin.readLineSync()!);

    double cost = menu[item]! * qty;
    subtotal += cost;

    billItems.add({'name': item, 'qty': qty, 'cost': cost});
  }

  double discount = subtotal >= 1000
      ? subtotal * 0.15
      : subtotal >= 500
      ? subtotal * 0.10
      : 0;

  double gst = (subtotal - discount) * 0.05;
  double grandTotal = subtotal - discount + gst;

  print("\n============== BILL ==============");
  for (var item in billItems) {
    print("${item['name']} x${item['qty']} = Rs. ${item['cost']}");
  }

  print("----------------------------------");
  print("Subtotal: Rs. $subtotal");
  print("Discount: Rs. ${discount.toStringAsFixed(2)}");
  print("GST (5%): Rs. ${gst.toStringAsFixed(2)}");
  print("Grand Total: Rs. ${grandTotal.toStringAsFixed(2)}");
  print("==================================\n");
}
