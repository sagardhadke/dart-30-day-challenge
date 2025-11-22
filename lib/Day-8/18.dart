//* Q18. Combining Logical + Ternary:
//* age = 25, hasJob = true
//* String status = age >= 18 && hasJob ? 'Independent' : 'Dependent';
//* Print status

void main() {
  int age = 25;
  bool hasJob = true;
  String status = age >= 18 && hasJob ? "Independent" : "Dependent";
  print(status);
}
