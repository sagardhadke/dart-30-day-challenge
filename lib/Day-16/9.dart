//* Question 9: Employee Salary Slip with Detailed Components
//* Take employee details as input: name, employee ID, basic salary, years of service, department (IT/Sales/HR), performance rating (A/B/C). Calculate components:
//* HRA: 25% of basic
//* DA: 15% of basic
//* Travel Allowance: IT: Rs.3000, Sales: Rs.5000, HR: Rs.2000
//* Performance Bonus: A: 30% of basic, B: 20%, C: 10%
//* Experience Bonus: years > 5 ? Rs.10000 : years > 3 ? Rs.5000 : 0
//* Gross Salary: basic + all allowances
//* Deductions: PF (12% of basic), Professional Tax (Rs.200), Tax (gross > 50000 ? 10% : 5%)
//* Net Salary: Gross - Deductions
//* Use logical and ternary operators. Use print() to create professional salary slip with all components clearly shown, properly formatted and aligned.

import 'dart:io';

void main() {
  stdout.write("Enter name: ");
  String name = stdin.readLineSync()!;

  stdout.write("Employee ID: ");
  String id = stdin.readLineSync()!;

  stdout.write("Basic Salary: ");
  double basic = double.parse(stdin.readLineSync()!);

  stdout.write("Years of Service: ");
  int years = int.parse(stdin.readLineSync()!);

  stdout.write("Department (IT/Sales/HR): ");
  String dep = stdin.readLineSync()!;

  stdout.write("Performance Rating (A/B/C): ");
  String rate = stdin.readLineSync()!;

  double hra = basic * 0.25;
  double da = basic * 0.15;

  double ta = dep == "IT"
      ? 3000
      : dep == "Sales"
      ? 5000
      : 2000;

  double performance = rate == "A"
      ? basic * 0.30
      : rate == "B"
      ? basic * 0.20
      : basic * 0.10;

  double expBonus = years > 5
      ? 10000
      : years > 3
      ? 5000
      : 0;

  double gross = basic + hra + da + ta + performance + expBonus;

  double pf = basic * 0.12;
  double pt = 200;
  double tax = gross > 50000 ? gross * 0.10 : gross * 0.05;

  double netSalary = gross - (pf + pt + tax);

  print("\n============== SALARY SLIP ==============");
  print("Name: $name");
  print("Employee ID: $id");
  print("-----------------------------------------");
  print("Basic Salary: Rs. $basic");
  print("HRA: Rs. $hra");
  print("DA: Rs. $da");
  print("Travel Allowance: Rs. $ta");
  print("Performance Bonus: Rs. $performance");
  print("Experience Bonus: Rs. $expBonus");
  print("-----------------------------------------");
  print("Gross Salary: Rs. $gross");
  print("PF: Rs. $pf");
  print("Professional Tax: Rs. $pt");
  print("Income Tax: Rs. ${tax.toStringAsFixed(2)}");
  print("-----------------------------------------");
  print("Net Salary: Rs. ${netSalary.toStringAsFixed(2)}");
  print("==========================================\n");
}
