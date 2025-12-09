//* Question 19: ATM Simulator with While Loop
//* Create an ATM system with initial balance of Rs. 10000. Use while loop to show menu:
//* 1. Check Balance
//* 2. Deposit Money
//* 3. Withdraw Money
//* 4. Exit
//*
//* Rules:
//* - Withdrawal should check if sufficient balance exists
//* - Withdrawal charge: Rs. 20 per transaction
//* - Cannot withdraw more than Rs. 20000 in single transaction
//* - Minimum balance of Rs. 1000 must be maintained
//* Keep running until user chooses Exit. Display updated balance after each transaction.

import 'dart:io';

void main() {
  double balance = 10000;
  int choice;
  do {
    print("ATM Menu:");
    print("1. Check Balance");
    print("2. Deposit Money");
    print("3. Withdraw Money");
    print("4. Exit");
    stdout.write("Enter choice: ");
    choice = int.parse(stdin.readLineSync()!);
    if (choice == 1) {
      print("Balance = Rs.$balance");
    } else if (choice == 2) {
      stdout.write("Enter deposit amount: ");
      double amt = double.parse(stdin.readLineSync()!);
      balance += amt;
      print("Updated Balance = Rs.$balance");
    } else if (choice == 3) {
      stdout.write("Enter withdrawal amount: ");
      double amt = double.parse(stdin.readLineSync()!);
      if (amt > 20000) {
        print("Cannot withdraw more than Rs. 20000");
      } else if (amt + 20 > balance - 1000) {
        print("Insufficient balance considering charges and minimum balance");
      } else {
        balance -= (amt + 20);
        print("Withdrawal successful. Updated Balance = Rs.$balance");
      }
    } else if (choice != 4) {
      print("Invalid choice");
    }
  } while (choice != 4);
}
