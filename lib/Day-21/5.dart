//* Question 5: Inventory Management with Alerts
//* Create inventory map with 8 products containing: stock quantity and minimum stock level. Display inventory using \t for alignment. Take operation choice: 1) Add Stock, 2) Remove Stock, 3) Check Alerts. For Add/Remove, take product name and quantity as input. Validate product exists using .containsKey() and quantity is valid using comparison operators. Update stock. For Check Alerts, use logical operators to categorize: stock < minimum/2 ? "CRITICAL" : stock < minimum ? "LOW" : stock >= minimum × 2 ? "OVERSTOCKED" : "OK". Display color-coded alerts (use text labels). Count products in each category and display summary.

import 'dart:io';

void main() {
  Map<String, Map<String, int>> inv = {
    "Pen": {"stock": 40, "min": 20},
    "Notebook": {"stock": 10, "min": 15},
    "Bag": {"stock": 5, "min": 10},
    "Pencil": {"stock": 60, "min": 30},
    "Marker": {"stock": 8, "min": 12},
    "Files": {"stock": 25, "min": 15},
    "Bottle": {"stock": 12, "min": 10},
    "Stapler": {"stock": 3, "min": 8},
  };

  print("\n--- Inventory ---");
  inv.forEach((k, v) {
    print("$k\tStock: ${v['stock']}\tMin: ${v['min']}");
  });

  print("\n1) Add Stock\n2) Remove Stock\n3) Check Alerts");
  stdout.write("Choice: ");
  int c = int.parse(stdin.readLineSync()!);

  if (c == 1 || c == 2) {
    stdout.write("Product: ");
    String p = stdin.readLineSync()!;
    if (!inv.containsKey(p)) return print("Invalid product!");

    stdout.write("Quantity: ");
    int q = int.parse(stdin.readLineSync()!);

    if (c == 1)
      inv[p]!['stock'] = inv[p]!['stock']! + q;
    else if (q <= inv[p]!['stock']!)
      inv[p]!['stock'] = inv[p]!['stock']! - q;
    else
      print("Not enough stock!");
  }

  if (c == 3) {
    int critical = 0, low = 0, over = 0, ok = 0;

    inv.forEach((k, v) {
      int s = v['stock']!;
      int m = v['min']!;

      String level = s < m / 2
          ? "CRITICAL"
          : s < m
          ? "LOW"
          : s >= m * 2
          ? "OVERSTOCKED"
          : "OK";

      if (level == "CRITICAL") critical++;
      if (level == "LOW") low++;
      if (level == "OVERSTOCKED") over++;
      if (level == "OK") ok++;

      print("$k --> $level");
    });

    print("\nSummary:");
    print("Critical: $critical");
    print("Low: $low");
    print("Overstocked: $over");
    print("OK: $ok");
  }
}
