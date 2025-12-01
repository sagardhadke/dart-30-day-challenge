//* Question 5: Product Discount Calculator
//* Create a map with 6 products and prices. Take product name and quantity as input using stdout.write(). Validate if product exists. Calculate cost (price × quantity). Apply discount logic using ternary: cost >= 5000 ? 20% : cost >= 3000 ? 15% : cost >= 1000 ? 10% : 0%. Add 5% GST on final price. Use print() to show itemized bill with product, quantity, original cost, discount, GST, and final amount.

import 'dart:io';

void main() {
  Map<String, double> products = {
    "Laptop": 45000,
    "Mouse": 500,
    "Keyboard": 1200,
    "Monitor": 9000,
    "Headphones": 2500,
    "USB": 600,
  };

  stdout.write("Enter product name: ");
  String name = stdin.readLineSync()!;

  if (!products.containsKey(name)) {
    print("Product not found!");
    return;
  }

  stdout.write("Enter quantity: ");
  int qty = int.parse(stdin.readLineSync()!);

  double price = products[name]!;
  double cost = price * qty;

  double discount = cost >= 5000
      ? cost * 0.20
      : cost >= 3000
      ? cost * 0.15
      : cost >= 1000
      ? cost * 0.10
      : 0;

  double afterDiscount = cost - discount;
  double gst = afterDiscount * 0.05;
  double finalAmount = afterDiscount + gst;

  print("\n------ BILL ------");
  print("Product: $name");
  print("Quantity: $qty");
  print("Original Cost: Rs. $cost");
  print("Discount: Rs. $discount");
  print("After Discount: Rs. $afterDiscount");
  print("GST (5%): Rs. $gst");
  print("Final Amount: Rs. $finalAmount");
}
