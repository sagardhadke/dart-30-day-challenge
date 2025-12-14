//* Question 15: E-Commerce Shopping System
//* Create complete shopping system:
//*
//* Products (stored in map): id, name, category, price, stock
//* Cart (list of maps): productId, quantity
//*
//* Functions:
//* - displayProducts() - shows all with for loop and escape sequences
//* - addToCart(productId, quantity) - validates stock, adds to cart
//* - removeFromCart(productId) - removes from cart
//* - updateCartQuantity(productId, newQuantity) - updates quantity
//* - calculateBill() - uses for loops, applies discounts with if-else:
//*   * Cart total > 5000: 20% discount
//*   * Cart total > 2000: 10% discount
//*   * Weekend (take input): additional 5% discount
//* - checkout() - generates bill with GST (5%), displays itemized bill
//*
//* Menu system:
//* 1. View Products
//* 2. Add to Cart
//* 3. View Cart
//* 4. Update Cart
//* 5. Remove from Cart
//* 6. Checkout
//* 7. Exit
//*
//* Use switch case, while loop for menu. Validate all inputs with if-else. Display professional bill format with \n and \t.

import 'dart:io';

List<Map<String, dynamic>> products = [
  {
    "id": 1,
    "name": "Laptop",
    "category": "Electronics",
    "price": 45000,
    "stock": 10,
  },
  {
    "id": 2,
    "name": "Phone",
    "category": "Electronics",
    "price": 20000,
    "stock": 15,
  },
  {"id": 3, "name": "Shoes", "category": "Fashion", "price": 3000, "stock": 20},
];

List<Map<String, dynamic>> cart = [];

void displayProducts() {
  print("\n--- Available Products ---");
  print("ID\tName\tCategory\tPrice\tStock");
  for (var p in products) {
    print(
      "${p['id']}\t${p['name']}\t${p['category']}\t${p['price']}\t${p['stock']}",
    );
  }
}

void addToCart(int productId, int quantity) {
  var product = products.firstWhere(
    (p) => p['id'] == productId,
    orElse: () => {},
  );
  if (product.isEmpty) {
    print("Product not found!");
    return;
  }
  if (quantity > product['stock']) {
    print("Not enough stock!");
    return;
  }

  var inCart = cart.firstWhere(
    (c) => c['productId'] == productId,
    orElse: () => {},
  );
  if (inCart.isEmpty) {
    cart.add({"productId": productId, "quantity": quantity});
  } else {
    inCart['quantity'] += quantity;
  }
  product['stock'] -= quantity;
  print("Added to cart successfully!");
}

void removeFromCart(int productId) {
  var inCart = cart.firstWhere(
    (c) => c['productId'] == productId,
    orElse: () => {},
  );
  if (inCart.isEmpty) {
    print("Product not in cart!");
    return;
  }
  var product = products.firstWhere((p) => p['id'] == productId);
  product['stock'] += inCart['quantity'];
  cart.removeWhere((c) => c['productId'] == productId);
  print("Product removed from cart!");
}

void updateCartQuantity(int productId, int newQuantity) {
  var inCart = cart.firstWhere(
    (c) => c['productId'] == productId,
    orElse: () => {},
  );
  if (inCart.isEmpty) {
    print("Product not in cart!");
    return;
  }
  var product = products.firstWhere((p) => p['id'] == productId);
  num stockChange = newQuantity - inCart['quantity'];
  if (stockChange > product['stock']) {
    print("Not enough stock!");
    return;
  }
  product['stock'] -= stockChange;
  inCart['quantity'] = newQuantity;
  print("Cart updated successfully!");
}

double calculateBill(bool isWeekend) {
  double total = 0;
  for (var c in cart) {
    var product = products.firstWhere((p) => p['id'] == c['productId']);
    total += product['price'] * c['quantity'];
  }

  if (total > 5000) {
    total *= 0.8;
  } else if (total > 2000) {
    total *= 0.9;
  }
  if (isWeekend) {
    total *= 0.95;
  }

  return total;
}

void checkout() {
  stdout.write("Is it weekend? (Y/N): ");
  String input = stdin.readLineSync()!.toUpperCase();
  bool isWeekend = input == "Y";

  double total = calculateBill(isWeekend);
  double gst = total * 0.05;
  double finalAmount = total + gst;

  print("\n--- BILL DETAILS ---");
  print("Product\tQty\tPrice\tSubtotal");
  for (var c in cart) {
    var p = products.firstWhere((prod) => prod['id'] == c['productId']);
    double subtotal = p['price'] * c['quantity'];
    print("${p['name']}\t${c['quantity']}\t${p['price']}\t$subtotal");
  }
  print("---------------------------");
  print("Total (after discount) : ₹${total.toStringAsFixed(2)}");
  print("GST (5%)               : ₹${gst.toStringAsFixed(2)}");
  print("Final Amount           : ₹${finalAmount.toStringAsFixed(2)}");
  print("---------------------------\n");
  cart.clear();
}

void main() {
  bool run = true;

  while (run) {
    print("\n===== E-COMMERCE SHOPPING MENU =====");
    print("1. View Products");
    print("2. Add to Cart");
    print("3. View Cart");
    print("4. Update Cart Quantity");
    print("5. Remove from Cart");
    print("6. Checkout");
    print("7. Exit");
    stdout.write("Choose option: ");

    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        displayProducts();
        break;

      case 2:
        stdout.write("Enter Product ID to add: ");
        int pid = int.parse(stdin.readLineSync()!);
        stdout.write("Enter Quantity: ");
        int qty = int.parse(stdin.readLineSync()!);
        addToCart(pid, qty);
        break;

      case 3:
        print("\n--- YOUR CART ---");
        if (cart.isEmpty) {
          print("Cart is empty.");
        } else {
          for (var c in cart) {
            var p = products.firstWhere((prod) => prod['id'] == c['productId']);
            print(
              "${p['name']} | Qty: ${c['quantity']} | Price: ${p['price']}",
            );
          }
        }
        break;

      case 4:
        stdout.write("Enter Product ID to update: ");
        int pid = int.parse(stdin.readLineSync()!);
        stdout.write("Enter new quantity: ");
        int qty = int.parse(stdin.readLineSync()!);
        updateCartQuantity(pid, qty);
        break;

      case 5:
        stdout.write("Enter Product ID to remove: ");
        int pid = int.parse(stdin.readLineSync()!);
        removeFromCart(pid);
        break;

      case 6:
        if (cart.isEmpty) {
          print("Cart is empty. Cannot checkout.");
        } else {
          checkout();
        }
        break;

      case 7:
        run = false;
        print("\nExiting E-Commerce System");
        break;

      default:
        print("Invalid choice!");
    }
  }
}
