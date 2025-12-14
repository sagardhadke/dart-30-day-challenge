//* Question 8: Bank Account Manager
//* Create functions:
//* - createAccount(name, initialBalance) - returns account map with id, name, balance
//* - deposit(account, amount) - adds to balance
//* - withdraw(account, amount) - deducts with Rs.20 charge, checks minimum balance Rs.5000
//*
//* Use switch case menu:
//* 1. Create Account
//* 2. Deposit
//* 3. Withdraw
//* 4. Check Balance
//* 5. Exit
//*
//* Use while loop for menu. Store multiple accounts in list. Display formatted output with escape sequences.

import 'dart:io';

Map<String, dynamic> createAccount(String name, double balance) {
  return {
    "id": DateTime.now().millisecondsSinceEpoch,
    "name": name,
    "balance": balance,
  };
}

void deposit(Map acc, double amount) {
  acc["balance"] += amount;
}

void withdraw(Map acc, double amount) {
  if (acc["balance"] - amount - 20 < 5000) {
    print("Minimum balance required!");
    return;
  }
  acc["balance"] -= (amount + 20);
}

void main() {
  List<Map<String, dynamic>> accounts = [];
  bool run = true;

  while (run) {
    print("\n1.Create 2.Deposit 3.Withdraw 4.Balance 5.Exit");
    int ch = int.parse(stdin.readLineSync()!);

    switch (ch) {
      case 1:
        stdout.write("Name: ");
        String name = stdin.readLineSync()!;
        stdout.write("Initial Balance: ");
        double bal = double.parse(stdin.readLineSync()!);
        accounts.add(createAccount(name, bal));
        break;
      case 2:
        deposit(accounts[0], 1000);
        break;
      case 3:
        withdraw(accounts[0], 500);
        break;
      case 4:
        print("Balance: ${accounts[0]['balance']}");
        break;
      case 5:
        run = false;
        break;
    }
  }
}
