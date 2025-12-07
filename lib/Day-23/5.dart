//* Question 5: Simple Discount Calculator
//* Take purchase amount as input. Use if-else:
//* - If amount >= 1000, apply 10% discount
//* - Else no discount
//* Calculate and display final amount after discount.
//* Test with: 1500, 800

import 'dart:io';

void main() {
  stdout.write("Enter purchase amount: ");
  double amount = double.parse(stdin.readLineSync()!);

  double finalAmount = amount;

  if (amount >= 1000) {
    double discount = amount * 0.10;
    finalAmount = amount - discount;
  }

  print("Final amount to pay: Rs. $finalAmount");
}
