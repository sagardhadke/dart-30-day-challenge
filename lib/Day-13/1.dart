//* Question 1: Weekly Expense Tracker
//* Create a list of your daily expenses for 7 days. Calculate total weekly expense and average daily expense. Find the highest expense day and lowest expense day. Print all results.

void main() {
  List<double> expenses = [100.0, 200.0, 150.0, 180.0, 220.0, 140.0, 170.0];

  double totalExpense = expenses.reduce((a, b) => a + b);

  double averageExpense = totalExpense / expenses.length;

  double highestExpense = expenses.reduce((a, b) => a > b ? a : b);
  double lowestExpense = expenses.reduce((a, b) => a < b ? a : b);

  print("Total weekly expense: \$${totalExpense}");
  print("Average daily expense: \$${averageExpense}");
  print("Highest expense day: \$${highestExpense}");
  print("Lowest expense day: \$${lowestExpense}");
}
