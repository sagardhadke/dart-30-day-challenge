//* Question 18: Student Management System with Functions
//* Create functions:
//* - addStudent() - takes name and list of 5 marks as parameters (use positional for name, named for marks list), returns map with student data
//* - calculatePercentage() - takes marks list, returns percentage
//* - assignGrade() - takes percentage, returns grade
//* - checkPass() - takes marks list, returns true if all subjects >= 40, else false
//* - displayReport() - takes student map, displays formatted report card
//*
//* In main:
//* - Take data for 3 students
//* - Use functions to process each student
//* - Store all students in a list
//* - Use anonymous function with forEach to display all reports
//* - Find and display class topper using anonymous functions

Map<String, dynamic> addStudent(String name, {required List<int> marks}) {
  return {"name": name, "marks": marks};
}

double calculatePercentage(List<int> marks) {
  int total = marks.reduce((a, b) => a + b);
  return total / marks.length;
}

String assignGrade(double percentage) {
  if (percentage >= 90) return "A+";
  if (percentage >= 80) return "A";
  if (percentage >= 70) return "B";
  if (percentage >= 60) return "C";
  if (percentage >= 50) return "D";
  return "F";
}

bool checkPass(List<int> marks) {
  return marks.every((m) => m >= 40);
}

void displayReport(Map student) {
  var marks = student["marks"];
  double percent = calculatePercentage(marks);
  String grade = assignGrade(percent);
  bool pass = checkPass(marks);

  print("----- Report Card -----");
  print("Name: ${student['name']}");
  print("Marks: $marks");
  print("Percentage: ${percent.toStringAsFixed(2)}");
  print("Grade: $grade");
  print("Status: ${pass ? "Pass" : "Fail"}");
}

void main() {
  List<Map<String, dynamic>> students = [];

  students.add(addStudent("John", marks: [78, 88, 90, 67, 80]));
  students.add(addStudent("Alice", marks: [92, 95, 89, 90, 94]));
  students.add(addStudent("Robert", marks: [55, 60, 58, 62, 59]));

  students.forEach((student) => displayReport(student));

  var topper = students.reduce(
    (a, b) => calculatePercentage(a["marks"]) > calculatePercentage(b["marks"])
        ? a
        : b,
  );

  print("\nClass Topper: ${topper['name']}");
}
