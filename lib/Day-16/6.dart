//* Question 6: Loan Eligibility Calculator
//* Take inputs: name, age, monthly salary, employment type (Salaried/Business), years of employment, existing loan EMI, credit score. Store in map. Check eligibility using complex logical conditions: (age >= 21 && age <= 60) && (salary >= 25000) && (employment_years >= 2) && (credit_score >= 700) && ((salary - existing_EMI) >= 15000). If eligible, calculate loan amount: (salary × 50) if Salaried, (salary × 40) if Business. Calculate EMI for 5 years. Use print() to create formatted eligibility report with all details and decision. Use ternary operators where appropriate.

import 'dart:io';

void main() {
  stdout.write("Name: ");
  String name = stdin.readLineSync()!;

  stdout.write("Age: ");
  int age = int.parse(stdin.readLineSync()!);

  stdout.write("Monthly Salary: ");
  double salary = double.parse(stdin.readLineSync()!);

  stdout.write("Employment Type (Salaried/Business): ");
  String type = stdin.readLineSync()!;

  stdout.write("Years of Employment: ");
  int years = int.parse(stdin.readLineSync()!);

  stdout.write("Existing EMI: ");
  double emi = double.parse(stdin.readLineSync()!);

  stdout.write("Credit Score: ");
  int score = int.parse(stdin.readLineSync()!);

  Map<String, dynamic> user = {
    'name': name,
    'age': age,
    'salary': salary,
    'type': type,
    'years': years,
    'emi': emi,
    'score': score,
  };

  bool eligible =
      (age >= 21 && age <= 60) &&
      salary >= 25000 &&
      years >= 2 &&
      score >= 700 &&
      (salary - emi >= 15000);

  double loanAmount = eligible
      ? (type == "Salaried" ? salary * 50 : salary * 40)
      : 0;

  double emi5years = eligible ? (loanAmount / 60) : 0;

  print("\n============= LOAN REPORT =============");
  print("Name: $name");
  print("Eligibility: ${eligible ? 'Eligible' : 'Not Eligible'}");

  if (eligible) {
    print("Approved Loan Amount: Rs. $loanAmount");
    print("Estimated EMI (5 years): Rs. ${emi5years.toStringAsFixed(2)}");
  }

  print("========================================\n");
}
