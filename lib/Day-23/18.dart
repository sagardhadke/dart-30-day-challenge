//* Question 18: Loan Eligibility Checker
//* Take following inputs:
//* - Age
//* - Monthly income
//* - Employment type (Salaried/Self-Employed/Business)
//* - Credit score
//* - Existing loan EMI
//*
//* Use nested if-else to check eligibility:
//* First check basic eligibility:
//* - Age must be between 21 and 60
//* - Monthly income must be >= 25,000
//* - Credit score must be >= 650
//*
//* If basic eligibility passed, check detailed eligibility:
//* For Salaried:
//*   - If income >= 50,000 and credit score >= 750: "Approved - Premium Rate (8% interest)"
//*   - Else if income >= 30,000 and credit score >= 700: "Approved - Standard Rate (10% interest)"
//*   - Else: "Approved - High Rate (12% interest)"
//*
//* For Self-Employed/Business:
//*   - Income must be >= 40,000
//*   - Credit score must be >= 700
//*   - If both satisfied: "Approved - Business Rate (11% interest)"
//*   - Else: "Rejected - Does not meet self-employed criteria"
//*
//* Also check: Existing EMI should not exceed 50% of monthly income
//* If it does, "Rejected - High existing obligations"
//*
//* Calculate maximum loan amount = Monthly income * 60 (for salaried) or * 50 (for self-employed)
//*
//* Display complete eligibility report with all checks and final decision.
//* Test with different combinations.

import 'dart:io';

void main() {
  stdout.write("Enter Age: ");
  int age = int.parse(stdin.readLineSync()!);

  stdout.write("Enter Monthly Income: ");
  int income = int.parse(stdin.readLineSync()!);

  stdout.write("Employment Type (Salaried/Self-Employed/Business): ");
  String type = stdin.readLineSync()!;

  stdout.write("Enter Credit Score: ");
  int credit = int.parse(stdin.readLineSync()!);

  stdout.write("Enter Existing EMI: ");
  int emi = int.parse(stdin.readLineSync()!);

  print("======== LOAN ELIGIBILITY REPORT ========");

  if (age < 21 || age > 60 || income < 25000 || credit < 650) {
    print("Rejected - Basic eligibility not met");
    return;
  }

  if (emi > income * 0.5) {
    print("Rejected - High existing obligations");
    return;
  }

  String decision = "";
  String rate = "";
  int maxLoan = 0;

  if (type == "Salaried") {
    maxLoan = income * 60;

    if (income >= 50000 && credit >= 750) {
      decision = "Approved - Premium Rate";
      rate = "8%";
    } else if (income >= 30000 && credit >= 700) {
      decision = "Approved - Standard Rate";
      rate = "10%";
    } else {
      decision = "Approved - High Rate";
      rate = "12%";
    }
  } else {
    maxLoan = income * 50;

    if (income >= 40000 && credit >= 700) {
      decision = "Approved - Business Rate";
      rate = "11%";
    } else {
      print("Rejected - Does not meet self-employed criteria");
      return;
    }
  }

  print("Decision: $decision");
  print("Interest Rate: $rate");
  print("Maximum Loan Amount: Rs. $maxLoan");
}
