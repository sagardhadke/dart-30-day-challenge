//* Question 12: Loan Eligibility Complex System
//* Take comprehensive inputs using stdout.write():
//*
//* Name, Age, Monthly Income, Existing EMI, Employment Type (Salaried/Self-Employed), Credit Score, Property Value (for home loan)
//*
//* Calculate:
//*
//* Available income = Monthly Income - Existing EMI
//* FOIR (Fixed Obligation to Income Ratio) = (Existing EMI / Monthly Income) * 100
//*
//* Check multiple eligibility conditions using logical operators:
//*
//* Basic: (age >= 23 && age <= 58) && creditScore >= 700
//* Income: availableIncome >= 20000 && FOIR < 50
//* Employment: (employmentType == "Salaried" && income >= 30000) || (employmentType == "Self-Employed" && income >= 50000)
//* Property: propertyValue >= 1000000
//*
//* Final eligibility = Basic && Income && Employment && Property
//* If eligible, calculate using ternary operators:
//*
//* Loan amount = employmentType == "Salaried" ? income * 60 : income * 50
//* Interest rate = creditScore >= 750 ? 8.5 : creditScore >= 700 ? 9.0 : 9.5
//* Processing fee = loanAmount > 2000000 ? 1.5% : 2%
//*
//* Use print() to create comprehensive loan eligibility report showing:
//*
//* All input parameters
//* Calculated values (available income, FOIR)
//* Each eligibility check result (pass/fail)
//* Final decision
//* If approved: loan amount, interest rate, processing fee, monthly EMI (simplified calculation)
//*
//* Format professionally with sections and borders.

import 'dart:io';

void main() {
  stdout.write("Name: ");
  String name = stdin.readLineSync()!;
  stdout.write("Age: ");
  int age = int.parse(stdin.readLineSync()!);
  stdout.write("Monthly Income: ");
  int income = int.parse(stdin.readLineSync()!);
  stdout.write("Existing EMI: ");
  int emi = int.parse(stdin.readLineSync()!);
  stdout.write("Employment Type (Salaried/Self-Employed): ");
  String emp = stdin.readLineSync()!;
  stdout.write("Credit Score: ");
  int credit = int.parse(stdin.readLineSync()!);
  stdout.write("Property Value: ");
  int pv = int.parse(stdin.readLineSync()!);

  int availableIncome = income - emi;
  double foir = (emi / income) * 100;

  bool basic = (age >= 23 && age <= 58) && credit >= 700;
  bool incomeCheck = availableIncome >= 20000 && foir < 50;
  bool employmentCheck =
      (emp == "Salaried" && income >= 30000) ||
      (emp == "Self-Employed" && income >= 50000);
  bool propertyCheck = pv >= 1000000;

  bool eligible = basic && incomeCheck && employmentCheck && propertyCheck;

  int loanAmount = eligible
      ? (emp == "Salaried" ? income * 60 : income * 50)
      : 0;

  double interest = credit >= 750
      ? 8.5
      : credit >= 700
      ? 9.0
      : 9.5;

  double fee = loanAmount > 2000000 ? loanAmount * 0.015 : loanAmount * 0.02;

  double monthlyEMI = eligible ? (loanAmount * interest / 100) / 12 : 0;

  print("""
====================================
         LOAN ELIGIBILITY REPORT
====================================
Name: $name
Age: $age
Income: $income
Existing EMI: $emi
Employment: $emp
Credit Score: $credit
Property Value: $pv

Available Income: $availableIncome
FOIR: ${foir.toStringAsFixed(2)}%

Eligibility Checks:
Basic: $basic
Income: $incomeCheck
Employment: $employmentCheck
Property: $propertyCheck

Final Eligibility: $eligible
------------------------------------
${eligible ? """
Loan Amount: $loanAmount
Interest Rate: $interest%
Processing Fee: ${fee.toStringAsFixed(2)}
Monthly EMI (approx): ${monthlyEMI.toStringAsFixed(2)}
""" : "APPLICATION REJECTED"}
====================================
""");
}
