//* Question 12: Invoice Generator: Take item name and price as input. Use escape sequences to create a formatted invoice:

//*    ================================
//*           TAX INVOICE
//*    ================================
//*    Item: [name]
//*    Price: Rs. [price]
//*    Tax (18%): Rs. [tax]
//*    --------------------------------
//*    Total: Rs. [total]
//*    ================================

import 'dart:io';

void main() {
  stdout.write("Enter item name: ");
  String name = stdin.readLineSync()!;

  stdout.write("Enter price: ");
  double price = double.parse(stdin.readLineSync()!);

  double tax = price * 0.18;
  double total = price + tax;

  print("\n================================");
  print("\t     TAX INVOICE");
  print("================================");
  print("Item: $name");
  print("Price: Rs. $price");
  print("Tax (18%): Rs. $tax");
  print("--------------------------------");
  print("Total: Rs. $total");
  print("================================");
}
