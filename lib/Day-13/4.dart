//* Question 4: Simple Grade Calculator
//* marks = 78. Calculate: if marks >= 90, grade = 'A', else if >= 75, grade = 'B', else if >= 60, grade = 'C', else grade = 'D'. Use nested ternary operators. Also check if marks >= 40 to print 'Pass' or 'Fail'. Print both grade and status.

void main() {
  int marks = 78;

  String grade = (marks >= 90)
      ? 'A'
      : (marks >= 75)
      ? 'B'
      : (marks >= 60)
      ? 'C'
      : 'D';

  String status = (marks >= 40) ? 'Pass' : 'Fail';

  print("Grade: $grade");
  print("Status: $status");
}
