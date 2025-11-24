//* Question 10: Combined Operators Challenge
//* age = 28, salary = 45000, experience = 5 years. Check eligibility for promotion using: (age >= 25 && salary >= 40000) || experience >= 7. Use ternary to print 'Eligible' or 'Not Eligible'.

void main() {
  int age = 28;
  int salary = 45000;
  int experience = 5;

  print(
    (age >= 25 && salary >= 40000) || experience >= 7
        ? 'Eligible'
        : 'Not Eligible',
  );
}
