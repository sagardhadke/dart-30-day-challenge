//* Question 17: ATM with Break and Continue
//* Create an ATM system with initial balance Rs. 50000:
//* Menu:
//* 1. Check Balance
//* 2. Withdraw Money
//* 3. Deposit Money
//* 4. Change PIN
//* 5. Exit
//*
//* Rules:
//* - Use switch case for menu
//* - Max 3 wrong PIN attempts, then break and exit
//* - Use continue to skip invalid withdrawal amounts (negative, zero, more than balance)
//* - Cannot withdraw more than Rs. 25000 in single transaction
//* - Minimum balance Rs. 5000 must remain
//* - Add Rs. 20 charge per withdrawal
//* - Use break to exit when option 5 selected
//* Track and display transaction count.

import 'dart:io';

void main() {
  int balance = 50000;
  int transactionCount = 0;
  String pin = '1234';
  int pinAttempts = 0;

  while (pinAttempts < 3) {
    print('Enter PIN: ');
    String enteredPin = stdin.readLineSync()!;

    if (enteredPin == pin) {
      print('PIN correct.');
      break;
    } else {
      print('Incorrect PIN.');
      pinAttempts++;
    }

    if (pinAttempts == 3) {
      print('Too many incorrect attempts. Exiting.');
      return;
    }
  }

  while (true) {
    print('Menu:');
    print('1. Check Balance');
    print('2. Withdraw Money');
    print('3. Deposit Money');
    print('4. Change PIN');
    print('5. Exit');

    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        print('Current balance: Rs. $balance');
        break;
      case 2:
        print('Enter amount to withdraw: ');
        int withdrawal = int.parse(stdin.readLineSync()!);

        if (withdrawal <= 0 ||
            withdrawal > balance ||
            withdrawal > 25000 ||
            balance - withdrawal < 5000) {
          print('Invalid withdrawal amount.');
          continue;
        }

        balance -= withdrawal + 20; // Rs. 20 charge
        transactionCount++;
        print(
          'Transaction successful. Rs. $withdrawal withdrawn. Balance: Rs. $balance',
        );
        break;
      case 3:
        print('Enter amount to deposit: ');
        int deposit = int.parse(stdin.readLineSync()!);

        if (deposit <= 0) {
          print('Invalid deposit amount.');
          continue;
        }

        balance += deposit;
        transactionCount++;
        print(
          'Transaction successful. Rs. $deposit deposited. Balance: Rs. $balance',
        );
        break;
      case 4:
        print('Enter new PIN: ');
        pin = stdin.readLineSync()!;
        print('PIN changed successfully.');
        break;
      case 5:
        print('Exiting...');
        print('Total transactions: $transactionCount');
        return;
      default:
        print('Invalid choice');
    }
  }
}
