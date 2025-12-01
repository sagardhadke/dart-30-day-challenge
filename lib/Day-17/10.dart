//* Question 10: Complete Inventory & Sales System
//* Create inventory map with 8 products containing nested maps: {'name': String, 'stock': int, 'price': double, 'min_stock': int}. Display main menu:
//* 1. View Inventory
//* 2. Add Stock
//* 3. Sell Product
//* 4. Stock Alert Report
//* 5. Sales Report
//* 6. Exit
//* Implement each option:
//*
//* View Inventory: Display all products in table format using print()
//* Add Stock: Take product name and quantity, update stock
//* Sell Product: Take product name and quantity as input. Validate: product exists && quantity <= available stock. Calculate sale amount (price × quantity). Apply discount using ternary: quantity >= 10 ? 15% : quantity >= 5 ? 10% : 0%. Update stock. Store sale in sales list.
//* Stock Alert Report: Use logical operators to categorize products: stock < (min_stock × 0.5) ? "CRITICAL" : stock < min_stock ? "LOW" : "OK". Display categorized lists.
//* Sales Report: Show all sales transactions, calculate total revenue, find bestselling product (most quantity sold)
//*
//* Use stdout.write() for all inputs. Use print() for all menus and reports with professional formatting. Handle complete workflow with at least 8 operations total.

import 'dart:io';

void main() {
  Map<String, Map<String, dynamic>> inventory = {
    "Pen": {"stock": 50, "price": 10.0, "min": 20},
    "Notebook": {"stock": 30, "price": 50.0, "min": 10},
    "Bag": {"stock": 15, "price": 500.0, "min": 5},
    "Bottle": {"stock": 20, "price": 150.0, "min": 8},
    "Mouse": {"stock": 25, "price": 300.0, "min": 10},
    "Keyboard": {"stock": 10, "price": 700.0, "min": 5},
    "Charger": {"stock": 18, "price": 400.0, "min": 10},
    "Headphones": {"stock": 12, "price": 800.0, "min": 5},
  };

  List<Map<String, dynamic>> sales = [];

  while (true) {
    print("\n\n------ MAIN MENU ------");
    print("1. View Inventory");
    print("2. Add Stock");
    print("3. Sell Product");
    print("4. Stock Alert Report");
    print("5. Sales Report");
    print("6. Exit");

    stdout.write("Enter choice: ");
    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 1) {
      print("\n------ INVENTORY ------");
      inventory.forEach((key, item) {
        print("$key → Stock: ${item['stock']}, Price: ${item['price']}");
      });
    } else if (choice == 2) {
      stdout.write("Enter product name: ");
      String name = stdin.readLineSync()!;

      if (!inventory.containsKey(name)) {
        print("Product not found!");
        continue;
      }

      stdout.write("Enter quantity: ");
      int qty = int.parse(stdin.readLineSync()!);

      inventory[name]!["stock"] += qty;
      print("Stock updated!");
    } else if (choice == 3) {
      stdout.write("Enter product name: ");
      String name = stdin.readLineSync()!;

      if (!inventory.containsKey(name)) {
        print("Product not found!");
        continue;
      }

      stdout.write("Enter quantity: ");
      int qty = int.parse(stdin.readLineSync()!);

      int stock = inventory[name]!["stock"];
      double price = inventory[name]!["price"];

      if (qty > stock) {
        print("Not enough stock!");
        continue;
      }

      double discount = qty >= 10
          ? 0.15
          : qty >= 5
          ? 0.10
          : 0.0;

      double cost = price * qty;
      double finalAmount = cost - (cost * discount);

      inventory[name]!["stock"] -= qty;

      sales.add({"product": name, "qty": qty, "amount": finalAmount});

      print("Sale completed!");
    } else if (choice == 4) {
      print("\n------ STOCK ALERT ------");
      inventory.forEach((name, item) {
        int stock = item["stock"];
        int minStock = item["min"];

        String level = stock < minStock * 0.5
            ? "CRITICAL"
            : stock < minStock
            ? "LOW"
            : "OK";

        print("$name → $level");
      });
    } else if (choice == 5) {
      print("\n------ SALES REPORT ------");
      double totalRevenue = 0;
      Map<String, num> productSales = {};

      for (var sale in sales) {
        print(
          "${sale['product']} → Qty: ${sale['qty']}, Amount: ${sale['amount']}",
        );
        totalRevenue += sale['amount'];

        productSales[sale['product']] =
            (productSales[sale['product']] ?? 0) + sale['qty'];
      }

      String bestProduct = productSales.isEmpty
          ? "None"
          : productSales.keys.reduce(
              (a, b) => productSales[a]! > productSales[b]! ? a : b,
            );

      print("Total Revenue: Rs. $totalRevenue");
      print("Bestselling Product: $bestProduct");
    } else if (choice == 6) {
      print("Exiting system...");
      break;
    }
  }
}
