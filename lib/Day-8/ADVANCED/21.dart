//* Q21. Loan Eligibility System:
//* age = 30, salary = 40000, creditScore = 750
//* Check: age >= 21 && age <= 60 && salary >= 30000 && creditScore >= 700
//* Use ternary: String eligible = (condition) ? 'Loan Approved' : 'Loan Rejected';
//* Print result

void main() {
  int age = 30;
  int salary = 40000;
  int creditScore = 750;
  print(
    age >= 21 && age <= 60 && salary >= 30000 && creditScore >= 700
        ? "Loan Approved"
        : "Loan Rejected",
  );
}
