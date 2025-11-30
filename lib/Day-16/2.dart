//* Question 2: Weekly Budget Tracker
//* Create a list to store expenses for 7 days. Take each day's expense as input using stdout.write() prompt "Day [X] expense: Rs.". Calculate: total weekly expense, average daily expense, highest expense day, lowest expense day. Check if total > 5000 (over budget). Use print() to create formatted weekly report with all statistics. Use logical operators to determine if user should "REDUCE SPENDING" (total > 5000 && average > 700).

import 'dart:io';

void main() {
  List<double> expenses = [];

  for (int i = 1; i <= 7; i++) {
    stdout.write("Day $i expense: Rs. ");
    expenses.add(double.parse(stdin.readLineSync()!));
  }

  double total = expenses.reduce((a, b) => a + b);
  double average = total / 7;
  double highest = expenses.reduce((a, b) => a > b ? a : b);
  double lowest = expenses.reduce((a, b) => a < b ? a : b);

  bool overBudget = total > 5000;
  bool reduceSpending = total > 5000 && average > 700;

  print("\n==============================");
  print("      WEEKLY EXPENSE REPORT");
  print("==============================");
  print("Total Weekly Expense: Rs. $total");
  print("Average Daily Expense: Rs. ${average.toStringAsFixed(2)}");
  print("Highest Expense: Rs. $highest");
  print("Lowest Expense: Rs. $lowest");
  print("Status: ${overBudget ? "OVER BUDGET" : "WITHIN BUDGET"}");
  print(reduceSpending ? "⚠️  Advice: REDUCE SPENDING" : "Good Job!");
  print("==============================\n");
}
