//* Question 11: Table Data Display
//* Take 3 products with their names and prices as input. Display in tabular format using \t:
//* PRODUCT            PRICE
//* Product1           Rs. 100
//* Product2           Rs. 200
//* Product3           Rs. 300

import 'dart:io';

void main() {
  stdout.write("Enter Product 1 name: ");
  String p1 = stdin.readLineSync()!;
  stdout.write("Enter Product 1 price: ");
  String pr1 = stdin.readLineSync()!;

  stdout.write("Enter Product 2 name: ");
  String p2 = stdin.readLineSync()!;
  stdout.write("Enter Product 2 price: ");
  String pr2 = stdin.readLineSync()!;

  stdout.write("Enter Product 3 name: ");
  String p3 = stdin.readLineSync()!;
  stdout.write("Enter Product 3 price: ");
  String pr3 = stdin.readLineSync()!;

  print("PRODUCT\t\tPRICE");
  print("$p1\t\tRs. $pr1");
  print("$p2\t\tRs. $pr2");
  print("$p3\t\tRs. $pr3");
}
