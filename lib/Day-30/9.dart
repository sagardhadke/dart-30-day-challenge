//* Question 9: Inventory Management with CRUD
//* Create product inventory using list of maps. Each product has: id, name, quantity, price.
//* Functions:
//* - addProduct() - adds new product
//* - updateProduct() - updates quantity or price
//* - deleteProduct() - removes product
//* - displayInventory() - shows all products in table format using \t
//* 
//* Use for loop to display. Use if-else for validation. Implement complete menu with switch case. Track total inventory value.

import 'dart:io';

List<Map<String, dynamic>> inventory = [];

void addProduct() {
  stdout.write("Enter Product ID: ");
  int id = int.parse(stdin.readLineSync()!);

  stdout.write("Enter Product Name: ");
  String name = stdin.readLineSync()!;

  stdout.write("Enter Quantity: ");
  int qty = int.parse(stdin.readLineSync()!);

  stdout.write("Enter Price: ");
  double price = double.parse(stdin.readLineSync()!);

  inventory.add({
    "id": id,
    "name": name,
    "qty": qty,
    "price": price
  });

  print("\nProduct Added Successfully!\n");
}

void updateProduct() {
  stdout.write("Enter Product ID to Update: ");
  int id = int.parse(stdin.readLineSync()!);

  bool found = false;

  for (var product in inventory) {
    if (product['id'] == id) {
      stdout.write("Update Quantity: ");
      product['qty'] = int.parse(stdin.readLineSync()!);

      stdout.write("Update Price: ");
      product['price'] = double.parse(stdin.readLineSync()!);

      found = true;
      print("\nProduct Updated!\n");
      break;
    }
  }

  if (!found) {
    print("\nProduct Not Found!\n");
  }
}

void deleteProduct() {
  stdout.write("Enter Product ID to Delete: ");
  int id = int.parse(stdin.readLineSync()!);

  inventory.removeWhere((product) => product['id'] == id);
  print("\nProduct Deleted (if existed)\n");
}

void displayInventory() {
  if (inventory.isEmpty) {
    print("\nInventory Empty!\n");
    return;
  }

  double totalValue = 0;

  print("\nID\tName\tQty\tPrice\tValue");
  print("-------------------------------------");

  for (var product in inventory) {
    double value = product['qty'] * product['price'];
    totalValue += value;

    print(
        "${product['id']}\t${product['name']}\t${product['qty']}\t${product['price']}\t$value");
  }

  print("-------------------------------------");
  print("Total Inventory Value: Rs.$totalValue\n");
}

void main() {
  bool run = true;

  while (run) {
    print("====== INVENTORY MANAGEMENT ======");
    print("1. Add Product");
    print("2. Update Product");
    print("3. Delete Product");
    print("4. Display Inventory");
    print("5. Exit");
    stdout.write("Choose option: ");

    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        addProduct();
        break;
      case 2:
        updateProduct();
        break;
      case 3:
        deleteProduct();
        break;
      case 4:
        displayInventory();
        break;
      case 5:
        run = false;
        print("\nExiting Inventory System");
        break;
      default:
        print("\nInvalid Choice\n");
    }
  }
}
