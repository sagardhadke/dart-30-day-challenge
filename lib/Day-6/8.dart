//* Q8. Make a mini “salary calculator”:
// Take basicSalary, add 20% HRA, add 10% TA, subtract 5% tax → print final salary.

void main() {
  double basicSalary = 12800;

  double hra = basicSalary * 0.20; // 20%
  double ta = basicSalary * 0.10; // 10%
  double tax = basicSalary * 0.05; // 5%
  double finalSalary = basicSalary + hra + ta - tax;

  print("Final Salary: $finalSalary");
}
