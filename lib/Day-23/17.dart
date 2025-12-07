//* Question 17: Income Tax Calculator
//* Take annual income as input. Calculate tax using nested if-else:
//* Tax Slabs:
//* - Income up to Rs. 2,50,000: No tax (0%)
//* - Income 2,50,001 to 5,00,000: 5% of amount above 2,50,000
//* - Income 5,00,001 to 10,00,000: 12,500 + 20% of amount above 5,00,000
//* - Income above 10,00,000: 1,12,500 + 30% of amount above 10,00,000
//*
//* If income > 50,00,000, add surcharge of 10% on calculated tax.
//*
//* Display:
//* - Annual Income
//* - Taxable Income
//* - Tax Amount
//* - Surcharge (if applicable)
//* - Total Tax
//* - Income after Tax
//* Test with: 200000, 400000, 700000, 1200000, 6000000

import 'dart:io';

void main() {
  stdout.write("Enter annual income: ");
  double income = double.parse(stdin.readLineSync()!);

  double tax = 0;

  if (income <= 250000) {
    tax = 0;
  } else if (income <= 500000) {
    tax = (income - 250000) * 0.05;
  } else if (income <= 1000000) {
    tax = 12500 + (income - 500000) * 0.20;
  } else {
    tax = 112500 + (income - 1000000) * 0.30;
  }

  double surcharge = 0;
  if (income > 5000000) {
    surcharge = tax * 0.10;
  }

  double totalTax = tax + surcharge;
  double incomeAfterTax = income - totalTax;

  print("Annual Income: Rs. $income");
  print("Tax Amount: Rs. $tax");
  print("Surcharge: Rs. $surcharge");
  print("Total Tax: Rs. $totalTax");
  print("Income After Tax: Rs. $incomeAfterTax");
}
