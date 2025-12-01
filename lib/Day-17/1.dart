//* Question 1: Simple Expense Manager
//* Take daily expenses for 5 days as input using stdout.write(). Store in a list. Calculate total and average expense. Check if any day's expense > 500 using comparison operators. Use print() to display formatted summary with total, average, and highest expense day.

import 'dart:io';

void main() {
  List<double> expenses = [];

  for (int i = 1; i <= 5; i++) {
    stdout.write("Enter expense for day $i: ");
    double value = double.parse(stdin.readLineSync()!);
    expenses.add(value);
  }

  double total = expenses.reduce((a, b) => a + b);
  double avg = total / expenses.length;
  double maxExpense = expenses.reduce((a, b) => a > b ? a : b);

  bool hasHighExpense = expenses.any((e) => e > 500);

  print("\n----- EXPENSE SUMMARY -----");
  print("Total Expense: Rs. $total");
  print("Average Expense: Rs. $avg");
  print("Highest Expense: Rs. $maxExpense");
  print("Any Day > 500?: ${hasHighExpense ? "Yes" : "No"}");
}
