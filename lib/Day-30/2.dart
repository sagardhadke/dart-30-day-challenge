//* Question 2: Simple Shopping List Manager
//* Create a list of 5 items. Use a for loop to display all items with index. Take item name to search as input. Use while loop with break to find and display if item exists. Add 2 new items using function addItem(). Display updated list with count.

import 'dart:io';

void addItem(List<String> items, String item) {
  items.add(item);
}

void main() {
  List<String> items = ["Milk", "Bread", "Eggs", "Rice", "Oil"];

  print("Shopping List:");
  for (int i = 0; i < items.length; i++) {
    print("$i. ${items[i]}");
  }

  stdout.write("\nSearch item: ");
  String search = stdin.readLineSync()!;
  bool found = false;
  int i = 0;

  while (i < items.length) {
    if (items[i].toLowerCase() == search.toLowerCase()) {
      found = true;
      break;
    }
    i++;
  }

  print(found ? "Item Found!" : "Item Not Found!");

  addItem(items, "Sugar");
  addItem(items, "Salt");

  print("\nUpdated List (${items.length} items):");
  for (var item in items) {
    print("- $item");
  }
}
