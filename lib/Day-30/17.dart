//* Question 17: Banking System with Transaction History
//* Create advanced banking system:
//*
//* Account structure: accountNumber, name, balance, transactionHistory (list)
//* Transaction structure: type (Deposit/Withdrawal/Transfer), amount, date, balance after transaction
//*
//* Functions:
//* - createAccount() - with initial deposit >=1000
//* - deposit(account, amount) - adds to balance, records transaction
//* - withdraw(account, amount) - with validations:
//*   * Amount > 0
//*   * Balance sufficient
//*   * Minimum balance Rs.5000
//*   * Withdrawal charge Rs.20
//* - transfer(fromAccount, toAccount, amount) - transfers with Rs.50 charge
//* - displayStatement(account) - shows last 10 transactions using for loop
//* - calculateInterest(account) - 4% annual, uses if-else for special rates:
//*   * Balance > 100000: 5%
//*   * Balance > 50000: 4.5%
//* - searchTransaction(account, type) - uses while loop with continue to find specific transactions
//*
//* Menu:
//* 1. Create Account
//* 2. Deposit
//* 3. Withdraw
//* 4. Transfer
//* 5. Check Balance
//* 6. View Statement
//* 7. Calculate Interest
//* 8. Search Transactions
//* 9. Account Summary
//* 10. Exit
//*
//* Store multiple accounts in list. Use switch case for menu. Validate using nested if-else. Display formatted outputs with escape sequences.

import 'dart:io';

List<Map<String, dynamic>> accounts = [];

void createAccount() {
  stdout.write("Enter Account Holder Name: ");
  String name = stdin.readLineSync()!;
  stdout.write("Enter Initial Deposit (>=1000): ");
  double deposit = double.parse(stdin.readLineSync()!);

  if (deposit < 1000) {
    print("Minimum deposit is 1000.");
    return;
  }

  int accountNumber = accounts.isEmpty
      ? 1001
      : accounts.last['accountNumber'] + 1;

  accounts.add({
    "accountNumber": accountNumber,
    "name": name,
    "balance": deposit,
    "transactionHistory": [
      {
        "type": "Deposit",
        "amount": deposit,
        "date": DateTime.now().toString(),
        "balanceAfter": deposit,
      },
    ],
  });

  print("Account Created! Account Number: $accountNumber");
}

void deposit(int accountNumber, double amount) {
  var account = accounts.firstWhere(
    (a) => a['accountNumber'] == accountNumber,
    orElse: () => {},
  );
  if (account.isEmpty) {
    print("Account not found!");
    return;
  }
  if (amount <= 0) {
    print("Deposit amount must be positive.");
    return;
  }
  account['balance'] += amount;
  account['transactionHistory'].add({
    "type": "Deposit",
    "amount": amount,
    "date": DateTime.now().toString(),
    "balanceAfter": account['balance'],
  });
  print("Deposit Successful! New Balance: ${account['balance']}");
}

void withdraw(int accountNumber, double amount) {
  var account = accounts.firstWhere(
    (a) => a['accountNumber'] == accountNumber,
    orElse: () => {},
  );
  if (account.isEmpty) {
    print("Account not found!");
    return;
  }
  if (amount <= 0) {
    print("Withdrawal amount must be positive.");
    return;
  }

  double totalDeduction = amount + 20;
  if (account['balance'] - totalDeduction < 5000) {
    print("Insufficient balance. Minimum Rs.5000 must remain.");
    return;
  }

  account['balance'] -= totalDeduction;
  account['transactionHistory'].add({
    "type": "Withdrawal",
    "amount": amount,
    "date": DateTime.now().toString(),
    "balanceAfter": account['balance'],
  });
  print("Withdrawal Successful! New Balance: ${account['balance']}");
}

void transfer(int fromAccountNumber, int toAccountNumber, double amount) {
  var fromAccount = accounts.firstWhere(
    (a) => a['accountNumber'] == fromAccountNumber,
    orElse: () => {},
  );
  var toAccount = accounts.firstWhere(
    (a) => a['accountNumber'] == toAccountNumber,
    orElse: () => {},
  );
  if (fromAccount.isEmpty || toAccount.isEmpty) {
    print("One or both accounts not found!");
    return;
  }
  if (amount <= 0) {
    print("Transfer amount must be positive.");
    return;
  }
  double totalDeduction = amount + 50;
  if (fromAccount['balance'] - totalDeduction < 5000) {
    print("Insufficient balance for transfer.");
    return;
  }

  fromAccount['balance'] -= totalDeduction;
  toAccount['balance'] += amount;

  fromAccount['transactionHistory'].add({
    "type": "Transfer Out",
    "amount": amount,
    "date": DateTime.now().toString(),
    "balanceAfter": fromAccount['balance'],
  });

  toAccount['transactionHistory'].add({
    "type": "Transfer In",
    "amount": amount,
    "date": DateTime.now().toString(),
    "balanceAfter": toAccount['balance'],
  });

  print("Transfer Successful!");
}

void displayStatement(int accountNumber) {
  var account = accounts.firstWhere(
    (a) => a['accountNumber'] == accountNumber,
    orElse: () => {},
  );
  if (account.isEmpty) {
    print("Account not found!");
    return;
  }

  print("\n--- LAST 10 TRANSACTIONS ---");
  var transactions = account['transactionHistory'];
  int start = transactions.length > 10 ? transactions.length - 10 : 0;
  for (int i = start; i < transactions.length; i++) {
    var t = transactions[i];
    print(
      "${t['date']} | ${t['type']} | Amount: ${t['amount']} | Balance After: ${t['balanceAfter']}",
    );
  }
}

void calculateInterest(int accountNumber) {
  var account = accounts.firstWhere(
    (a) => a['accountNumber'] == accountNumber,
    orElse: () => {},
  );
  if (account.isEmpty) {
    print("Account not found!");
    return;
  }
  double rate = 0.04;
  if (account['balance'] > 100000)
    rate = 0.05;
  else if (account['balance'] > 50000)
    rate = 0.045;

  double interest = account['balance'] * rate;
  print("Interest Calculated: $interest at rate ${rate * 100}%");
}

void searchTransaction(int accountNumber, String type) {
  var account = accounts.firstWhere(
    (a) => a['accountNumber'] == accountNumber,
    orElse: () => {},
  );
  if (account.isEmpty) {
    print("Account not found!");
    return;
  }
  print("\n--- Transactions of type: $type ---");
  for (var t in account['transactionHistory']) {
    if (t['type'].toLowerCase() == type.toLowerCase()) {
      print(
        "${t['date']} | Amount: ${t['amount']} | Balance After: ${t['balanceAfter']}",
      );
    }
  }
}

void accountSummary(int accountNumber) {
  var account = accounts.firstWhere(
    (a) => a['accountNumber'] == accountNumber,
    orElse: () => {},
  );
  if (account.isEmpty) {
    print("Account not found!");
    return;
  }
  print("\n--- ACCOUNT SUMMARY ---");
  print("Account Number: ${account['accountNumber']}");
  print("Name: ${account['name']}");
  print("Balance: ${account['balance']}");
  print("Total Transactions: ${account['transactionHistory'].length}");
}

void main() {
  bool run = true;

  while (run) {
    print("\n===== ADVANCED BANKING SYSTEM =====");
    print("1. Create Account");
    print("2. Deposit");
    print("3. Withdraw");
    print("4. Transfer");
    print("5. Check Balance");
    print("6. View Statement");
    print("7. Calculate Interest");
    print("8. Search Transactions");
    print("9. Account Summary");
    print("10. Exit");
    stdout.write("Choose option: ");

    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        createAccount();
        break;
      case 2:
        stdout.write("Enter Account Number: ");
        int accNo = int.parse(stdin.readLineSync()!);
        stdout.write("Enter Deposit Amount: ");
        double amt = double.parse(stdin.readLineSync()!);
        deposit(accNo, amt);
        break;
      case 3:
        stdout.write("Enter Account Number: ");
        int accNo = int.parse(stdin.readLineSync()!);
        stdout.write("Enter Withdrawal Amount: ");
        double amt = double.parse(stdin.readLineSync()!);
        withdraw(accNo, amt);
        break;
      case 4:
        stdout.write("Enter From Account Number: ");
        int fromAcc = int.parse(stdin.readLineSync()!);
        stdout.write("Enter To Account Number: ");
        int toAcc = int.parse(stdin.readLineSync()!);
        stdout.write("Enter Transfer Amount: ");
        double amt = double.parse(stdin.readLineSync()!);
        transfer(fromAcc, toAcc, amt);
        break;
      case 5:
        stdout.write("Enter Account Number: ");
        int accNo = int.parse(stdin.readLineSync()!);
        var acc = accounts.firstWhere(
          (a) => a['accountNumber'] == accNo,
          orElse: () => {},
        );
        if (acc.isEmpty)
          print("Account not found!");
        else
          print("Balance: ${acc['balance']}");
        break;
      case 6:
        stdout.write("Enter Account Number: ");
        int accNo = int.parse(stdin.readLineSync()!);
        displayStatement(accNo);
        break;
      case 7:
        stdout.write("Enter Account Number: ");
        int accNo = int.parse(stdin.readLineSync()!);
        calculateInterest(accNo);
        break;
      case 8:
        stdout.write("Enter Account Number: ");
        int accNo = int.parse(stdin.readLineSync()!);
        stdout.write("Enter Transaction Type to Search: ");
        String type = stdin.readLineSync()!;
        searchTransaction(accNo, type);
        break;
      case 9:
        stdout.write("Enter Account Number: ");
        int accNo = int.parse(stdin.readLineSync()!);
        accountSummary(accNo);
        break;
      case 10:
        run = false;
        print("\nExiting Banking System");
        break;
      default:
        print("Invalid Choice!");
    }
  }
}
