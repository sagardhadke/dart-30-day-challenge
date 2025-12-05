//* Question 3: Shopping Discount Calculator
//* Create a products list with 6 items and their prices stored in a map. Take customer type (Regular/Premium/VIP) and purchase day (Monday-Sunday) as input. For each item user wants to buy, take quantity. Calculate subtotal. Apply discounts using nested ternary: VIP = 25%, Premium = 15%, Regular = 5%. If purchase day is weekend (Saturday/Sunday), add extra 10% discount using logical operators. Calculate final amount with 8% GST. Use escape sequences to create professional bill with \n and \t.

import 'dart:io';

void main() {
  Map<String, int> products = {
    "Milk": 50,
    "Bread": 40,
    "Eggs": 70,
    "Rice": 60,
    "Sugar": 45,
    "Oil": 150,
  };

  stdout.write("Customer type (Regular/Premium/VIP): ");
  String type = stdin.readLineSync()!;

  stdout.write("Purchase day: ");
  String day = stdin.readLineSync()!;

  double subtotal = 0;

  print("\nEnter quantity for 6 items:");
  products.forEach((item, price) {
    stdout.write("$item: ");
    int q = int.parse(stdin.readLineSync()!);
    subtotal += price * q;
  });

  double discountRate = type == "VIP"
      ? 0.25
      : type == "Premium"
      ? 0.15
      : 0.05;

  if (day == "Saturday" || day == "Sunday") discountRate += 0.10;

  double discount = subtotal * discountRate;
  double afterDiscount = subtotal - discount;
  double gst = afterDiscount * 0.08;
  double finalAmount = afterDiscount + gst;

  print("\n====== BILL ======");
  print("Subtotal:\t₹${subtotal.toStringAsFixed(2)}");
  print("Discount:\t₹${discount.toStringAsFixed(2)}");
  print("GST (8%):\t₹${gst.toStringAsFixed(2)}");
  print("Final Amount:\t₹${finalAmount.toStringAsFixed(2)}");
}
