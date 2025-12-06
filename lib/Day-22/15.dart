//* Question 15: Complete Shopping Bill Generator
//* Take customer name as input. Take number of items to purchase. For each item, use stdout.write() to take name, price, and quantity. Calculate:
//* - Subtotal for each item
//* - Cart total
//* - Discount (10% if total > 1000)
//* - GST (5%)
//* - Final amount
//*
//* Use escape sequences to create professional bill:
//* ================================================
//*            SHOPPING MART
//*            123 Main Street
//* ================================================
//*
//* Customer: [name]              Date: 06-Dec-2025
//* Bill No: [number]
//*
//* ================================================
//* ITEM                QTY    PRICE      AMOUNT
//* ------------------------------------------------
//* [item1]             [q]    [p]        [amt]
//* [item2]             [q]    [p]        [amt]
//* [item3]             [q]    [p]        [amt]
//* ------------------------------------------------
//*                     Subtotal:         [subtotal]
//*                     Discount (10%):   [discount]
//*                     GST (5%):         [gst]
//* ================================================
//*                     GRAND TOTAL:      [total]
//* ================================================
//*
//*         THANK YOU! VISIT AGAIN!
//* ================================================

import 'dart:io';

void main() {
  stdout.write("Enter customer name: ");
  String customer = stdin.readLineSync()!;

  stdout.write("How many items? ");
  int count = int.parse(stdin.readLineSync()!);

  List<Map<String, dynamic>> items = [];
  double subtotal = 0;

  for (int i = 1; i <= count; i++) {
    stdout.write("Enter item $i name: ");
    String name = stdin.readLineSync()!;

    stdout.write("Enter price: ");
    double price = double.parse(stdin.readLineSync()!);

    stdout.write("Enter quantity: ");
    int qty = int.parse(stdin.readLineSync()!);

    double amount = price * qty;
    subtotal += amount;

    items.add({"name": name, "price": price, "qty": qty, "amount": amount});
  }

  double discount = subtotal > 1000 ? subtotal * 0.10 : 0;
  double gst = (subtotal - discount) * 0.05;
  double total = subtotal - discount + gst;

  print("================================================");
  print("           SHOPPING MART");
  print("           123 Main Street");
  print("================================================");
  print("Customer: $customer\t\tDate: 06-Dec-2025");
  print("Bill No: 1001");
  print("================================================");
  print("ITEM\t\tQTY\tPRICE\tAMOUNT");
  print("------------------------------------------------");
  for (var item in items) {
    print(
      "${item['name']}\t\t${item['qty']}\t${item['price']}\t${item['amount']}",
    );
  }
  print("------------------------------------------------");
  print("\t\tSubtotal:\t$subtotal");
  print("\t\tDiscount:\t$discount");
  print("\t\tGST (5%):\t$gst");
  print("================================================");
  print("\t\tGRAND TOTAL:\t$total");
  print("================================================");
  print("        THANK YOU! VISIT AGAIN!");
  print("================================================");
}
