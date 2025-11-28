//* Q19. Take total bill amount as input. If bill > 1000, apply 10% discount, else no discount. Calculate and print final amount.

import 'dart:io';

void main() {
  print("Enter total bill amount:");
  double bill = double.parse(stdin.readLineSync()!);

  double finalAmount =
      bill > 1000 ? bill - (bill * 0.10) : bill;

  print("Final Amount = $finalAmount");
}
