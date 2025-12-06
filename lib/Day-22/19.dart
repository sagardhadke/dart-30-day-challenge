//* Question 19: Restaurant Order System
//* Create a menu map with 8 items and prices. Display menu using proper formatting with \t and \n. Take customer name using stdout.write(). Take number of items to order. For each item, take item name and quantity as input. Validate if item exists in menu. Calculate:
//* - Item-wise cost (price × quantity)
//* - Subtotal
//* - Service charge (10%)
//* - GST (5%)
//* - Total amount
//*
//* Display professional restaurant bill:
//* ================================================
//*         RESTAURANT NAME
//*         123 Food Street, Mumbai
//*         Phone: 022-12345678
//* ================================================
//*
//* Date: 06-Dec-2025              Bill No: R[number]
//* Time: [time]                   Table No: [number]
//* Cashier: [name]
//*
//* Customer: [customer_name]
//*
//* ================================================
//* ITEM                QTY    RATE       AMOUNT
//* ------------------------------------------------
//* [item1]             [q]    [rate]     [amt]
//* [item2]             [q]    [rate]     [amt]
//* [item3]             [q]    [rate]     [amt]
//* ------------------------------------------------
//*                     Subtotal:         [subtotal]
//*                     Service (10%):    [service]
//*                     CGST (2.5%):      [cgst]
//*                     SGST (2.5%):      [sgst]
//* ================================================
//*                     GRAND TOTAL:      [total]
//* ================================================
//*
//* Payment Mode: [Cash/Card/UPI]
//*
//*         THANK YOU! VISIT AGAIN!
//*           www.restaurantname.com
//* ================================================

import 'dart:io';
import 'dart:math';

void main() {
  Map<String, double> menu = {
    "Pizza": 250,
    "Burger": 120,
    "Pasta": 180,
    "Fries": 80,
    "Sandwich": 150,
    "Coffee": 90,
    "Tea": 20,
    "IceCream": 60,
  };

  print("MENU");
  print("ITEM\t\tPRICE");
  menu.forEach((k, v) => print("$k\t\tRs. $v"));

  stdout.write("Enter customer name: ");
  String customer = stdin.readLineSync()!;

  stdout.write("How many items to order? ");
  int count = int.parse(stdin.readLineSync()!);

  List<Map<String, dynamic>> orders = [];
  double subtotal = 0;

  for (int i = 1; i <= count; i++) {
    stdout.write("Enter item name: ");
    String item = stdin.readLineSync()!;

    if (!menu.containsKey(item)) {
      print("Item not available!");
      i--;
      continue;
    }

    stdout.write("Enter quantity: ");
    int qty = int.parse(stdin.readLineSync()!);

    double amt = menu[item]! * qty;
    subtotal += amt;

    orders.add({"item": item, "qty": qty, "rate": menu[item], "amt": amt});
  }

  double service = subtotal * 0.10;
  double cgst = subtotal * 0.025;
  double sgst = subtotal * 0.025;
  double total = subtotal + service + cgst + sgst;

  print("================================================");
  print("        RESTAURANT NAME");
  print("        123 Food Street, Mumbai");
  print("        Phone: 022-12345678");
  print("================================================");
  print("Date: 06-Dec-2025\tBill No: R${Random().nextInt(99999)}");
  print("Time: 10:45 AM\tTable No: 12");
  print("Cashier: John");
  print("\nCustomer: $customer");
  print("================================================");
  print("ITEM\tQTY\tRATE\tAMOUNT");
  print("------------------------------------------------");

  for (var o in orders) {
    print("${o['item']}\t${o['qty']}\t${o['rate']}\t${o['amt']}");
  }

  print("------------------------------------------------");
  print("\tSubtotal:\t$subtotal");
  print("\tService (10%):\t$service");
  print("\tCGST (2.5%):\t$cgst");
  print("\tSGST (2.5%):\t$sgst");
  print("================================================");
  print("\tGRAND TOTAL:\t$total");
  print("================================================");
  stdout.write("Payment Mode (Cash/Card/UPI): ");
  String mode = stdin.readLineSync()!;
  print("Payment Mode: $mode");
  print("        THANK YOU! VISIT AGAIN!");
  print("          www.restaurantname.com");
  print("================================================");
}
