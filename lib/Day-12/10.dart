//* Question 10: Salary Slip Generator
//* basicSalary = 45000. Calculate: HRA = 20% of basic, DA = 15% of basic, PF = 12% of basic. Use ternary: if basicSalary > 40000, bonus = 10000, else bonus = 5000. Calculate gross salary (basic + HRA + DA + bonus) and net salary (gross - PF). Print complete salary slip with all components.

void main() {
  double basicSalary = 45000;

  double hra = basicSalary * 0.20;
  double da = basicSalary * 0.15;
  double pf = basicSalary * 0.12;

  double bonus = basicSalary > 40000 ? 10000 : 5000;

  double gross = basicSalary + hra + da + bonus;
  double net = gross - pf;

  print("Basic Salary: Rs. $basicSalary");
  print("HRA: Rs. $hra");
  print("DA: Rs. $da");
  print("Bonus: Rs. $bonus");
  print("PF Deduction: Rs. $pf");
  print("Gross Salary: Rs. $gross");
  print("Net Salary: Rs. $net");
}
