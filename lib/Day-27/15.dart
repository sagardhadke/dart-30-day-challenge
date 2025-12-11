//* Question 15: Employee Salary Calculator with Named Parameters
//* Create a function calculateSalary() with named parameters:
//* - required double basicSalary
//* - double hra = 0.2 (20% default)
//* - double da = 0.15 (15% default)
//* - double bonus = 0
//* - required double pf (12% as 0.12)

//* Calculate:
//* - HRA = basicSalary * hra
//* - DA = basicSalary * da
//* - Gross = basicSalary + HRA + DA + bonus
//* - PF deduction = basicSalary * pf
//* - Net Salary = Gross - PF
//*
//* Return net salary. Create another function displaySalarySlip() that takes all parameters and displays formatted salary slip. Test with different employees.

double calculateSalary({
  required double basicSalary,
  double hra = 0.20,
  double da = 0.15,
  double bonus = 0,
  required double pf,
}) {
  double hraAmount = basicSalary * hra;
  double daAmount = basicSalary * da;
  double gross = basicSalary + hraAmount + daAmount + bonus;
  double pfDeduction = basicSalary * pf;

  return gross - pfDeduction;
}

void displaySalarySlip({
  required double basicSalary,
  double hra = 0.20,
  double da = 0.15,
  double bonus = 0,
  required double pf,
}) {
  double netSalary = calculateSalary(
    basicSalary: basicSalary,
    hra: hra,
    da: da,
    bonus: bonus,
    pf: pf,
  );

  print("----- Salary Slip -----");
  print("Basic Salary: $basicSalary");
  print("HRA: ${basicSalary * hra}");
  print("DA: ${basicSalary * da}");
  print("Bonus: $bonus");
  print("PF Deduction: ${basicSalary * pf}");
  print("Net Salary: $netSalary");
}

void main() {
  displaySalarySlip(basicSalary: 30000, pf: 0.12, bonus: 5000);
}
