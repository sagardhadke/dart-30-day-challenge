//* Question 8: Student Performance Dashboard
//* Take 4 students' data as input. For each student take: name, roll number, and marks for 4 subjects. Store in a map where each student's data is a nested map: {'name': String, 'roll': int, 'marks': List}. For each student calculate:
//*
//* Total marks and percentage
//* Grade using: (percentage >= 90 && all subjects >= 75) ? "A+" : (percentage >= 80 && all subjects >= 65) ? "A" : percentage >= 70 ? "B" : percentage >= 60 ? "C" : "D"
//* Pass status: all subjects >= 40 ? "PASS" : "FAIL"
//*
//* Calculate class statistics: average percentage, topper details, count by grade (how many A+, A, B, C, D), pass percentage. Use print() to create comprehensive dashboard showing individual student reports and class analytics. Format professionally with proper sections.

import 'dart:io';

void main() {
  List<Map<String, dynamic>> students = [];

  for (int i = 1; i <= 4; i++) {
    stdout.write("Enter student name: ");
    String name = stdin.readLineSync()!;

    stdout.write("Enter roll number: ");
    int roll = int.parse(stdin.readLineSync()!);

    List<int> marks = [];
    for (int j = 1; j <= 4; j++) {
      stdout.write("Enter marks for subject $j: ");
      marks.add(int.parse(stdin.readLineSync()!));
    }

    int total = marks.reduce((a, b) => a + b);
    double percent = total / 4;

    String grade = (percent >= 90 && marks.every((m) => m >= 75))
        ? "A+"
        : (percent >= 80 && marks.every((m) => m >= 65))
        ? "A"
        : percent >= 70
        ? "B"
        : percent >= 60
        ? "C"
        : "D";

    String status = marks.every((m) => m >= 40) ? "PASS" : "FAIL";

    students.add({
      "name": name,
      "roll": roll,
      "marks": marks,
      "total": total,
      "percent": percent,
      "grade": grade,
      "status": status,
    });
  }

  print("\n========== STUDENT DASHBOARD ==========");

  students.forEach((s) {
    print("\nName: ${s['name']}");
    print("Roll: ${s['roll']}");
    print("Marks: ${s['marks']}");
    print("Total: ${s['total']}");
    print("Percentage: ${s['percent']}");
    print("Grade: ${s['grade']}");
    print("Status: ${s['status']}");
  });

  double avgPercent =
      students.map((s) => s['percent']).reduce((a, b) => a + b) / 4;

  var topper = students.reduce((a, b) => a['percent'] > b['percent'] ? a : b);

  Map<String, int> gradeCount = {"A+": 0, "A": 0, "B": 0, "C": 0, "D": 0};
  for (var s in students) {
    gradeCount[s['grade']] = gradeCount[s['grade']]! + 1;
  }

  double passPercent =
      (students.where((s) => s['status'] == "PASS").length / 4) * 100;

  print("\n========== CLASS ANALYTICS ==========");
  print("Average Percentage: $avgPercent");
  print("Topper: ${topper['name']} (${topper['percent']}%)");
  print("Grade Count: $gradeCount");
  print("Pass Percentage: $passPercent%");
}
