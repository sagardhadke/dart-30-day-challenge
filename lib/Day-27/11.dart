//* Question 11: Grade Calculator Function
//* Create a function calculateGrade() that takes marks as positional parameter and returns grade (A+/A/B/C/D/F). Use if-else inside function. Test with multiple marks values.

String calculateGrade(int marks) {
  if (marks >= 90) return "A+";
  if (marks >= 80) return "A";
  if (marks >= 70) return "B";
  if (marks >= 60) return "C";
  if (marks >= 50) return "D";
  return "F";
}

void main() {
  print(calculateGrade(95));
  print(calculateGrade(72));
  print(calculateGrade(48));
}
