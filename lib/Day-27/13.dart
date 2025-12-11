//* Question 13: Anonymous Function with Map
//* Create a map of 5 students with marks. Use forEach with anonymous function to print each student's name, marks, and grade (calculate grade inside anonymous function).

String gradeCalc(int marks) {
  if (marks >= 90) return "A+";
  if (marks >= 80) return "A";
  if (marks >= 70) return "B";
  if (marks >= 60) return "C";
  if (marks >= 50) return "D";
  return "F";
}

void main() {
  Map<String, int> students = {
    "John": 85,
    "Alice": 92,
    "Bob": 67,
    "Sam": 45,
    "David": 78,
  };

  students.forEach((name, marks) {
    print("Name: $name, Marks: $marks, Grade: ${gradeCalc(marks)}");
  });
}
