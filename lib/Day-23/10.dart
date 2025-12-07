//* Question 10: Electricity Bill Calculator
//* Take units consumed as input. Calculate bill using nested if-else:
//* - If units <= 100: rate = Rs. 2 per unit
//* - Else if units <= 200: rate = Rs. 3 per unit
//* - Else if units <= 300: rate = Rs. 4 per unit
//* - Else: rate = Rs. 5 per unit
//* Add fixed charge of Rs. 50.
//* Display: units consumed, rate applied, bill amount.
//* Test with: 80, 150, 250, 350

import 'dart:io';

void main() {
  stdout.write("Enter units consumed: ");
  int units = int.parse(stdin.readLineSync()!);

  int rate;

  if (units <= 100) {
    rate = 2;
  } else if (units <= 200) {
    rate = 3;
  } else if (units <= 300) {
    rate = 4;
  } else {
    rate = 5;
  }

  double bill = units * rate + 50;

  print("Units: $units");
  print("Rate per unit: Rs. $rate");
  print("Total Bill: Rs. $bill");
}
