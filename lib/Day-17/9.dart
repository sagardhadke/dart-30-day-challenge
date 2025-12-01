//* Question 9: Banking Transaction System
//* Take account holder name and initial balance as input. Create a transaction history list (empty initially). Show menu using print():
//* 1. Deposit
//* 2. Withdraw
//* 3. Check Balance
//* 4. Transaction History
//* 5. Exit
//* Take choice using stdout.write(). Implement operations:
//*
//* Deposit: Take amount, validate (> 0), add to balance, add to history with type "Deposit"
//* Withdraw: Take amount, validate (> 0 && <= balance), subtract from balance, deduct Rs. 20 charge, add to history with type "Withdrawal"
//* Check Balance: Display current balance
//* Transaction History: Show last 5 transactions with type and amount
//* Exit: Show final balance and exit
//*
//* After each transaction, check and display using logical operators: balance < 1000 ? "Low Balance Alert!" : balance >= 50000 ? "High Value Account" : "Regular Account". Use print() for all outputs with proper formatting. Handle at least 5 operations before exit.

import 'dart:io';

void main() {
  stdout.write("Enter account holder name: ");
  String name = stdin.readLineSync()!;

  stdout.write("Enter initial balance: ");
  double balance = double.parse(stdin.readLineSync()!);

  List<String> history = [];

  while (true) {
    print("\n----- MENU -----");
    print("1. Deposit");
    print("2. Withdraw");
    print("3. Check Balance");
    print("4. Transaction History");
    print("5. Exit");

    stdout.write("Enter choice: ");
    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 1) {
      stdout.write("Enter deposit amount: ");
      double amount = double.parse(stdin.readLineSync()!);
      if (amount > 0) {
        balance += amount;
        history.add("Deposit: Rs. $amount");
      }
    } else if (choice == 2) {
      stdout.write("Enter withdrawal amount: ");
      double amount = double.parse(stdin.readLineSync()!);

      if (amount > 0 && amount <= balance) {
        balance -= (amount + 20);
        history.add("Withdrawal: Rs. $amount (Charge: 20)");
      }
    } else if (choice == 3) {
      print("Current Balance: Rs. $balance");
    } else if (choice == 4) {
      print("\n--- Last Transactions ---");
      history.take(5).forEach((h) => print(h));
    } else if (choice == 5) {
      print("\nFinal Balance: Rs. $balance");
      break;
    }

    String alert = balance < 1000
        ? "Low Balance Alert!"
        : balance >= 50000
        ? "High Value Account"
        : "Regular Account";

    print(alert);
  }
}
