//* Question 16: Student Management System with Recursion
//* Create comprehensive student system:
//*
//* Student structure: id, name, marks (list of 5 subjects), attendance
//*
//* Functions:
//* - addStudent() - with validation
//* - updateStudent() - update marks or attendance
//* - deleteStudent() - with confirmation
//* - displayStudent() - formatted display
//* - searchStudent(name) - recursive function to search in list
//* - calculateClassStats() - uses multiple loops
//*
//* Recursive functions:
//* - searchRecursive(list, name, index) - searches student
//* - findMaxMarks(marksList, index) - finds highest marks recursively
//* - calculateGradeRecursive(marks) - uses recursion for grade calculation
//*
//* Menu with all CRUD operations. Use nested if-else for validations. Display statistics:
//* - Total students
//* - Class average
//* - Grade distribution (A+, A, B, C, D, F counts)
//* - Attendance report
//* Use for loops and anonymous functions where appropriate.

import 'dart:io';

List<Map<String, dynamic>> students = [];

void addStudent() {
  stdout.write("Enter Student Name: ");
  String name = stdin.readLineSync()!;
  List<int> marks = [];
  for (int i = 1; i <= 5; i++) {
    stdout.write("Enter marks for Subject $i: ");
    int mark = int.parse(stdin.readLineSync()!);
    marks.add(mark);
  }
  stdout.write("Enter Attendance (%): ");
  double attendance = double.parse(stdin.readLineSync()!);

  int id = students.isEmpty ? 1 : students.last['id'] + 1;
  students.add({
    "id": id,
    "name": name,
    "marks": marks,
    "attendance": attendance,
  });

  print("\nStudent Added Successfully!\n");
}

void updateStudent(int id) {
  var student = students.firstWhere((s) => s['id'] == id, orElse: () => {});
  if (student.isEmpty) {
    print("Student not found!");
    return;
  }
  stdout.write("Update Marks? (Y/N): ");
  String choice = stdin.readLineSync()!.toUpperCase();
  if (choice == "Y") {
    List<int> marks = [];
    for (int i = 1; i <= 5; i++) {
      stdout.write("Enter marks for Subject $i: ");
      int mark = int.parse(stdin.readLineSync()!);
      marks.add(mark);
    }
    student['marks'] = marks;
  }
  stdout.write("Update Attendance? (Y/N): ");
  choice = stdin.readLineSync()!.toUpperCase();
  if (choice == "Y") {
    stdout.write("Enter Attendance (%): ");
    double attendance = double.parse(stdin.readLineSync()!);
    student['attendance'] = attendance;
  }
  print("\nStudent Updated Successfully!\n");
}

void deleteStudent(int id) {
  students.removeWhere((s) => s['id'] == id);
  print("\nStudent Deleted Successfully!\n");
}

void displayStudent(Map<String, dynamic> s) {
  print(
    "ID: ${s['id']} | Name: ${s['name']} | Marks: ${s['marks']} | Attendance: ${s['attendance']}%",
  );
}

Map<String, dynamic>? searchRecursive(int index, String name) {
  if (index >= students.length) return null;
  if (students[index]['name'].toLowerCase() == name.toLowerCase())
    return students[index];
  return searchRecursive(index + 1, name);
}

int calculateTotal(List<int> marks) {
  int total = 0;
  for (var m in marks) total += m;
  return total;
}

double calculatePercentage(int total) {
  return (total / 500) * 100;
}

String assignGrade(double percentage) {
  if (percentage >= 90)
    return "A+";
  else if (percentage >= 80)
    return "A";
  else if (percentage >= 70)
    return "B";
  else if (percentage >= 60)
    return "C";
  else if (percentage >= 50)
    return "D";
  else
    return "F";
}

void calculateClassStats() {
  if (students.isEmpty) {
    print("No students available.");
    return;
  }

  int totalStudents = students.length;
  double classTotal = 0;
  double highestPercentage = 0;
  Map<String, int> gradeCount = {
    "A+": 0,
    "A": 0,
    "B": 0,
    "C": 0,
    "D": 0,
    "F": 0,
  };
  int passCount = 0;

  for (var s in students) {
    int total = calculateTotal(s['marks']);
    double perc = calculatePercentage(total);
    String grade = assignGrade(perc);
    classTotal += perc;
    if (perc > highestPercentage) highestPercentage = perc;
    gradeCount[grade] = gradeCount[grade]! + 1;
    if (s['marks'].every((m) => m >= 40)) passCount++;
  }

  print("\n--- CLASS STATISTICS ---");
  print("Total Students: $totalStudents");
  print("Class Average: ${(classTotal / totalStudents).toStringAsFixed(2)}%");
  print("Topper Percentage: ${highestPercentage.toStringAsFixed(2)}%");
  print(
    "Pass Percentage: ${(passCount / totalStudents * 100).toStringAsFixed(2)}%",
  );
  print("Grade Distribution: $gradeCount");
  print("------------------------\n");
}

void main() {
  bool run = true;

  while (run) {
    print("\n===== STUDENT MANAGEMENT SYSTEM =====");
    print("1. Add Student");
    print("2. Update Student");
    print("3. Delete Student");
    print("4. Search Student");
    print("5. Display All Students");
    print("6. Class Statistics");
    print("7. Exit");
    stdout.write("Choose option: ");

    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        addStudent();
        break;

      case 2:
        stdout.write("Enter Student ID to Update: ");
        int id = int.parse(stdin.readLineSync()!);
        updateStudent(id);
        break;

      case 3:
        stdout.write("Enter Student ID to Delete: ");
        int id = int.parse(stdin.readLineSync()!);
        deleteStudent(id);
        break;

      case 4:
        stdout.write("Enter Student Name to Search: ");
        String name = stdin.readLineSync()!;
        var student = searchRecursive(0, name);
        if (student != null)
          displayStudent(student);
        else
          print("Student not found!");
        break;

      case 5:
        print("\n--- ALL STUDENTS ---");
        for (var s in students) displayStudent(s);
        break;

      case 6:
        calculateClassStats();
        break;

      case 7:
        run = false;
        print("\nExiting Student Management System");
        break;

      default:
        print("Invalid Choice!");
    }
  }
}
