//* Question 17: Bank Transaction Receipt
//* Take account holder name, account number, and transaction type (Deposit/Withdrawal) as input. Take transaction amount. For withdrawal, check if amount is valid (you can assume initial balance of 50000). Calculate:
//* - New balance
//* - Transaction charges (Rs. 20 for withdrawal, Free for deposit)
//* - Final balance after charges
//*
//* Display formatted transaction receipt:
//* ================================================
//*           BANK NAME
//*           Transaction Receipt
//* ================================================
//*
//* Date: 06-Dec-2025           Time: [current time]
//* Transaction ID: TXN[random number]
//*
//* Account Holder: [name]
//* Account Number: [number]
//*
//* Transaction Type:    [Deposit/Withdrawal]
//* Amount:              Rs. [amount]
//* Transaction Charge:  Rs. [charge]
//* ------------------------------------------------
//* Previous Balance:    Rs. [prev_balance]
//* Current Balance:     Rs. [curr_balance]
//* ================================================
//*
//* Thank you for banking with us!
//*
//* Customer Care: 1800-XXX-XXXX
//* ================================================

import 'dart:io';
import 'dart:math';

void main() {
  double balance = 50000;

  stdout.write("Enter account holder name: ");
  String name = stdin.readLineSync()!;

  stdout.write("Enter account number: ");
  String number = stdin.readLineSync()!;

  stdout.write("Transaction type (Deposit/Withdrawal): ");
  String type = stdin.readLineSync()!;

  stdout.write("Enter amount: ");
  double amount = double.parse(stdin.readLineSync()!);

  double charge = 0;
  double prev = balance;

  if (type.toLowerCase() == "withdrawal") {
    if (amount > balance) {
      print("Insufficient balance!");
      return;
    }
    balance -= amount;
    charge = 20;
    balance -= charge;
  } else if (type.toLowerCase() == "deposit") {
    balance += amount;
  }

  print("================================================");
  print("          BANK NAME");
  print("          Transaction Receipt");
  print("================================================");
  print("Date: 06-Dec-2025           Time: 10:45 AM");
  print("Transaction ID: TXN${Random().nextInt(999999)}");
  print("\nAccount Holder: $name");
  print("Account Number: $number");
  print("\nTransaction Type:\t$type");
  print("Amount:\t\tRs. $amount");
  print("Transaction Charge:\tRs. $charge");
  print("------------------------------------------------");
  print("Previous Balance:\tRs. $prev");
  print("Current Balance:\tRs. $balance");
  print("================================================");
  print("Thank you for banking with us!");
  print("Customer Care: 1800-XXX-XXXX");
  print("================================================");
}
