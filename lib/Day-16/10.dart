//* Question 10: Complete Inventory Management System
//* Create inventory map with 10 products containing: name, current stock, minimum stock, price. Display inventory using print() in tabular format. Take operation choice from user: 1) Add Stock, 2) Remove Stock, 3) Sell Product, 4) Generate Report. Based on choice:
//* Add Stock: Take product name and quantity, update stock
//* Remove Stock: Take product name and quantity, validate and update
//* Sell Product: Take product name and quantity, validate stock, calculate sale amount, update stock
//* Generate Report: Show all products, categorize as CRITICAL (stock < 50% minimum), LOW (stock < minimum but >= 50%), OK (stock >= minimum)
//* After each operation, use print() to show updated status. Use logical operators for stock validations. Use ternary for categorization. Create professional looking system with proper menus and formatted output throughout.

import 'dart:io';

void main() {
  Map<String, Map<String, dynamic>> inventory = {
    'Pen': {'stock': 80, 'min': 50, 'price': 10},
    'Notebook': {'stock': 40, 'min': 30, 'price': 50},
    'Marker': {'stock': 20, 'min': 25, 'price': 30},
    'Bag': {'stock': 60, 'min': 40, 'price': 500},
    'Bottle': {'stock': 30, 'min': 20, 'price': 100},
    'Shoes': {'stock': 25, 'min': 20, 'price': 1500},
    'T-Shirt': {'stock': 45, 'min': 30, 'price': 300},
    'Cap': {'stock': 15, 'min': 10, 'price': 100},
    'Watch': {'stock': 12, 'min': 10, 'price': 2000},
    'Charger': {'stock': 50, 'min': 40, 'price': 300},
  };

  while (true) {
    print("\n=============== INVENTORY MENU ===============");
    print("1) Add Stock");
    print("2) Remove Stock");
    print("3) Sell Product");
    print("4) Generate Report");
    print("5) Exit");
    print("==============================================");

    stdout.write("Enter choice: ");
    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 5) break;

    stdout.write("Enter product name: ");
    String name = stdin.readLineSync()!;

    if (!inventory.containsKey(name)) {
      print("Product not found!");
      continue;
    }

    if (choice == 1) {
      stdout.write("Quantity to add: ");
      int qty = int.parse(stdin.readLineSync()!);
      inventory[name]!['stock'] += qty;
    } else if (choice == 2) {
      stdout.write("Quantity to remove: ");
      int qty = int.parse(stdin.readLineSync()!);

      if (qty > inventory[name]!['stock']) {
        print("Not enough stock!");
      } else {
        inventory[name]!['stock'] -= qty;
      }
    } else if (choice == 3) {
      stdout.write("Quantity to sell: ");
      int qty = int.parse(stdin.readLineSync()!);

      if (qty > inventory[name]!['stock']) {
        print("Stock insufficient!");
      } else {
        num amount = qty * inventory[name]!['price'];
        inventory[name]!['stock'] -= qty;
        print("Sale Amount: Rs. $amount");
      }
    } else if (choice == 4) {
      print("\n================= INVENTORY REPORT =================");
      inventory.forEach((product, data) {
        int stock = data['stock'];
        int min = data['min'];

        String status = stock < min * 0.5
            ? "CRITICAL"
            : stock < min
            ? "LOW"
            : "OK";

        print(
          "$product | Stock: $stock | Min: $min | Status: $status | Price: Rs.${data['price']}",
        );
      });
      print("====================================================");
    }
  }
}
