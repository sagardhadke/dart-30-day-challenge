//* Question 4: Bank Loan EMI Calculator
//* Take loan amount, annual interest rate, and loan tenure (years) as input. Validate using comparison operators: amount >= 100000, rate >= 5 && rate <= 20, tenure >= 1 && tenure <= 30. Calculate monthly interest rate = annual/12/100. Calculate number of months = tenure × 12. Use formula for EMI (simplified): EMI = [amount × monthlyRate × (1+monthlyRate)^months] / [(1+monthlyRate)^months - 1]. For now, calculate approximate EMI = (amount + (amount × rate/100 × tenure)) / (tenure × 12). Calculate total payment and total interest. Use ternary to determine loan status: amount > 5000000 ? "High Value" : amount > 1000000 ? "Medium Value" : "Regular". Display formatted loan details with all calculations using escape sequences.

import 'dart:io';

void main() {
  stdout.write("Loan amount: ");
  double amount = double.parse(stdin.readLineSync()!);

  stdout.write("Annual interest rate: ");
  double rate = double.parse(stdin.readLineSync()!);

  stdout.write("Tenure (years): ");
  int years = int.parse(stdin.readLineSync()!);

  if (!(amount >= 100000 &&
      rate >= 5 &&
      rate <= 20 &&
      years >= 1 &&
      years <= 30)) {
    print("Invalid Details!");
    return;
  }

  double emi = (amount + (amount * rate / 100 * years)) / (years * 12);

  double totalPayment = emi * years * 12;
  double interest = totalPayment - amount;

  String status = amount > 5000000
      ? "High Value"
      : amount > 1000000
      ? "Medium Value"
      : "Regular";

  print("\n===== LOAN REPORT =====");
  print("Loan Status: $status");
  print("EMI: ₹${emi.toStringAsFixed(2)}");
  print("Total Payment: ₹${totalPayment.toStringAsFixed(2)}");
  print("Total Interest: ₹${interest.toStringAsFixed(2)}");
}
