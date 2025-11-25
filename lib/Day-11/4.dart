//* Question 4: Bank Transaction Validator
//* Starting balance Rs. 50000. List of 10 transactions (positive for deposit, negative for withdrawal). For each transaction: check if withdrawal is possible (balance sufficient), apply Rs. 20 charge for withdrawals, add 4% interest on deposits > Rs. 10000, maintain minimum balance Rs. 5000 (else Rs. 500 penalty). Calculate final balance with all transactions and charges.

void main() {
  double balance = 50000;
  List<double> transactions = [
    20000,
    -10000,
    -15000,
    5000,
    -25000,
    12000,
    -8000,
    30000,
    -2000,
    -1000,
  ];

  for (double t in transactions) {
    if (t > 0) {
      balance += t;
      if (t > 10000) balance += t * 0.04;
    } else {
      if (balance + t >= 0) {
        balance += t;
        balance -= 20;
      } else {
        print("Withdrawal of $t failed due to low balance!");
      }
    }

    if (balance < 5000) balance -= 500;
  }

  print("Final Balance: Rs. $balance");
}
