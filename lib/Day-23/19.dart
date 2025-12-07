//* Question 19: Restaurant Bill with Dynamic Pricing
//* Take following inputs:
//* - Number of items ordered
//* - For each item: item type (Veg/Non-Veg/Beverage/Dessert) and base price
//* - Customer type (Regular/Member/VIP)
//* - Day of week (Weekday/Weekend)
//* - Dining type (Dine-in/Takeaway/Delivery)
//*
//* Use nested if-else for pricing:
//* Base price for items (add this to input price):
//* - Veg: +0%
//* - Non-Veg: +20%
//* - Beverage: +10%
//* - Dessert: +15%
//*
//* Customer discount:
//* - VIP: 25% off on food items (not on beverages)
//* - Member: 15% off on food items
//* - Regular: No discount
//*
//* Day charges:
//* - Weekend: +10% on total (before customer discount)
//* - Weekday: No extra charge
//*
//* Service type charges:
//* - Dine-in: +10% service charge
//* - Takeaway: No extra
//* - Delivery: +Rs. 50 delivery charge
//*
//* Calculate:
//* - Item-wise cost
//* - Subtotal
//* - Weekend charges (if applicable)
//* - Customer discount
//* - Service/delivery charges
//* - GST (5%)
//* - Grand Total
//*
//* Display detailed bill with all breakups.
//* Test with: 3 items, VIP, Weekend, Delivery

import 'dart:io';

void main() {
  stdout.write("Enter number of items: ");
  int count = int.parse(stdin.readLineSync()!);

  double subtotal = 0;

  for (int i = 1; i <= count; i++) {
    print("Item $i type (Veg/Non-Veg/Beverage/Dessert): ");
    String type = stdin.readLineSync()!;

    stdout.write("Enter base price: ");
    double price = double.parse(stdin.readLineSync()!);

    double extra = 0;

    if (type == "Veg")
      extra = 0;
    else if (type == "Non-Veg")
      extra = price * 0.20;
    else if (type == "Beverage")
      extra = price * 0.10;
    else if (type == "Dessert")
      extra = price * 0.15;

    subtotal += price + extra;
  }

  stdout.write("Customer type (Regular/Member/VIP): ");
  String cust = stdin.readLineSync()!;

  stdout.write("Day (Weekday/Weekend): ");
  String day = stdin.readLineSync()!;

  stdout.write("Dining type (Dine-in/Takeaway/Delivery): ");
  String dine = stdin.readLineSync()!;

  double weekendCharge = day == "Weekend" ? subtotal * 0.10 : 0;

  double discount = 0;
  if (cust == "VIP")
    discount = subtotal * 0.25;
  else if (cust == "Member")
    discount = subtotal * 0.15;

  double service = 0;
  if (dine == "Dine-in")
    service = subtotal * 0.10;
  else if (dine == "Delivery")
    service = 50;

  double gst = (subtotal + weekendCharge - discount + service) * 0.05;

  double total = subtotal + weekendCharge - discount + service + gst;

  print("========== BILL ==========");
  print("Subtotal: Rs. $subtotal");
  print("Weekend Charges: Rs. $weekendCharge");
  print("Customer Discount: Rs. $discount");
  print("Service/Delivery: Rs. $service");
  print("GST (5%): Rs. $gst");
  print("Grand Total: Rs. $total");
  print("==========================");
}
