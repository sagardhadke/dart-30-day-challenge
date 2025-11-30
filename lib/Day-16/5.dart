//* Question 5: Shopping Cart Manager
//* Create products map: {'Laptop': 45000, 'Mouse': 500, 'Keyboard': 1500, 'Monitor': 12000, 'Headphones': 2000}. Use stdout.write() to ask "Enter number of different items to buy: ". For each item, take product name and quantity as input. Validate if product exists in map using .containsKey(). Calculate cart total. Check membership using input (Premium/Regular). If Premium, apply 20% discount. If Regular && total > 10000, apply 10% discount. Add shipping: total >= 5000 ? 0 : 200. Use print() to display formatted shopping cart with all items, prices, quantities, discounts, shipping, and final amount.

import 'dart:io';

void main() {
  Map<String, int> products = {
    'Laptop': 45000,
    'Mouse': 500,
    'Keyboard': 1500,
    'Monitor': 12000,
    'Headphones': 2000,
  };

  stdout.write("Enter number of different items to buy: ");
  int n = int.parse(stdin.readLineSync()!);

  List<Map<String, dynamic>> cart = [];
  double total = 0;

  for (int i = 1; i <= n; i++) {
    stdout.write("Enter product name: ");
    String name = stdin.readLineSync()!;

    if (!products.containsKey(name)) {
      print("Invalid product! Try again.");
      i--;
      continue;
    }

    stdout.write("Enter quantity: ");
    int qty = int.parse(stdin.readLineSync()!);

    int cost = products[name]! * qty;
    total += cost;

    cart.add({'name': name, 'qty': qty, 'cost': cost});
  }

  stdout.write("Membership (Premium/Regular): ");
  String type = stdin.readLineSync()!;

  double discount = 0;

  if (type == "Premium") {
    discount = total * 0.20;
  } else if (type == "Regular" && total > 10000) {
    discount = total * 0.10;
  }

  double shipping = total >= 5000 ? 0 : 200;

  double finalAmount = total - discount + shipping;

  print("\n================ SHOPPING CART ================");
  for (var item in cart) {
    print("${item['name']} x${item['qty']} = Rs. ${item['cost']}");
  }
  print("----------------------------------------------");
  print("Total: Rs. $total");
  print("Discount: Rs. ${discount.toStringAsFixed(2)}");
  print("Shipping: Rs. $shipping");
  print("Final Amount: Rs. ${finalAmount.toStringAsFixed(2)}");
  print("================================================\n");
}
