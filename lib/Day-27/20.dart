//* Question 20: Banking System with Comprehensive Functions
//* Create a complete banking system with following functions:
//*
//* Account Management:
//* - createAccount({required String name, required String accountNumber, double initialBalance = 0}) - returns account map
//* - displayAccount(Map account) - displays formatted account details
//*
//* Transaction Functions:
//* - deposit(Map account, double amount) - adds amount to balance, returns new balance
//* - withdraw(Map account, double amount) - deducts amount with Rs. 20 charge, checks minimum balance Rs. 5000, returns new balance or error message
//* - transfer(Map fromAccount, Map toAccount, double amount) - transfers money between accounts with Rs. 50 charge
//*
//* Utility Functions:
//* - calculateInterest({required double balance, double rate = 4.5}) - calculates annual interest
//* - checkBalance(Map account) - returns current balance
//* - generateStatement(Map account, List transactions) - displays formatted statement
//*
//* Transaction History:
//* - Use list to store all transactions
//* - Each transaction is a map: {type, amount, balance, timestamp}
//* - Use anonymous function with forEach to display transaction history
//*
//* Main Program:
//* - Create 2 accounts
//* - Show menu with all operations
//* - Use switch case for menu
//* - Perform at least 10 different transactions
//* - Use functions appropriately for each operation
//* - Display final account details and transaction history for both accounts
//* - Calculate and display total interest earned on both accounts
//*
//* Use named parameters where appropriate, positional parameters for simple functions, and anonymous functions for list operations. Display all outputs in formatted manner.

Map<String, dynamic> createAccount({
  required String name,
  required String accountNumber,
  double initialBalance = 0,
}) {
  return {
    "name": name,
    "accountNumber": accountNumber,
    "balance": initialBalance,
  };
}

void displayAccount(Map account) {
  print("----- Account Details -----");
  print("Name: ${account['name']}");
  print("Account No: ${account['accountNumber']}");
  print("Balance: ${account['balance']}");
}

double deposit(Map account, double amount) {
  account['balance'] += amount;
  return account['balance'];
}

dynamic withdraw(Map account, double amount) {
  if (account['balance'] - amount - 20 < 5000) {
    return "Insufficient Balance!";
  }
  account['balance'] -= (amount + 20);
  return account['balance'];
}

dynamic transfer(Map from, Map to, double amount) {
  if (from['balance'] - amount - 50 < 5000) {
    return "Transfer Failed! Insufficient Balance.";
  }
  from['balance'] -= (amount + 50);
  to['balance'] += amount;
  return "Transfer Successful!";
}

double calculateInterest({required double balance, double rate = 4.5}) {
  return balance * rate / 100;
}

double checkBalance(Map account) => account['balance'];

void generateStatement(Map account, List<Map> transactions) {
  print("----- Statement for ${account['name']} -----");
  transactions.forEach((t) {
    print(
      "${t['timestamp']} | ${t['type']} | Amount: ${t['amount']} | Balance: ${t['balance']}",
    );
  });
}

void main() {
  Map acc1 = createAccount(
    name: "John",
    accountNumber: "A101",
    initialBalance: 12000,
  );
  Map acc2 = createAccount(
    name: "Alice",
    accountNumber: "A102",
    initialBalance: 15000,
  );

  List<Map> t1 = [];
  List<Map> t2 = [];

  deposit(acc1, 3000);
  t1.add({
    "type": "Deposit",
    "amount": 3000,
    "balance": acc1['balance'],
    "timestamp": DateTime.now(),
  });

  withdraw(acc1, 2000);
  t1.add({
    "type": "Withdraw",
    "amount": 2000,
    "balance": acc1['balance'],
    "timestamp": DateTime.now(),
  });

  transfer(acc1, acc2, 2500);
  t1.add({
    "type": "Transfer Out",
    "amount": 2500,
    "balance": acc1['balance'],
    "timestamp": DateTime.now(),
  });
  t2.add({
    "type": "Transfer In",
    "amount": 2500,
    "balance": acc2['balance'],
    "timestamp": DateTime.now(),
  });

  double interest1 = calculateInterest(balance: acc1['balance']);
  double interest2 = calculateInterest(balance: acc2['balance']);

  print("\nInterest Earned:");
  print("John: $interest1");
  print("Alice: $interest2");

  print("\nFinal Statements:");
  generateStatement(acc1, t1);
  generateStatement(acc2, t2);
}
