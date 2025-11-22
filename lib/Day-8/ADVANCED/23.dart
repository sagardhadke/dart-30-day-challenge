//* Q23. Grade Calculator with Multiple Conditions:
//* marks = 78, attendance = 85
//* Final grade depends on: marks >= 90 AND attendance >= 80 (A grade)
//* Or: marks >= 75 AND attendance >= 75 (B grade)
//* Or: marks >= 60 (C grade)
//* Use nested ternary to assign and print grade

void main() {
  int marks = 78;
  int attendance = 85;
  String grade;

  if (marks >= 90 && attendance >= 80) {
    grade = "A";
    print(grade);
  } else if (marks >= 75 && attendance >= 75) {
    grade = "B";
    print(grade);
  } else {
    grade = "C";
    print(grade);
  }
}
