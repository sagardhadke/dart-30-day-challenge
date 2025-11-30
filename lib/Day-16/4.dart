//* Question 4: Student Grade Calculator with Input
//* Take number of students as input. For each student, take name and marks for 5 subjects as input using stdout.write() prompts. Store in appropriate data structure (map with nested lists). For each student calculate: total, percentage, grade using nested ternary (>=90: A+, >=80: A, >=70: B, >=60: C, else: D). Check if passed (all subjects >= 40). Calculate class average. Use print() to create formatted class report showing each student's details and class statistics.

import 'dart:io';

void main() {
  stdout.write("Enter number of students: ");
  int n = int.parse(stdin.readLineSync()!);

  List<Map<String, dynamic>> students = [];

  for (int i = 1; i <= n; i++) {
    stdout.write("\nEnter student name: ");
    String name = stdin.readLineSync()!;

    List<int> marks = [];
    for (int j = 1; j <= 5; j++) {
      stdout.write("Enter marks for Subject $j: ");
      marks.add(int.parse(stdin.readLineSync()!));
    }

    int total = marks.reduce((a, b) => a + b);
    double percentage = total / 5;

    String grade = percentage >= 90
        ? "A+"
        : percentage >= 80
        ? "A"
        : percentage >= 70
        ? "B"
        : percentage >= 60
        ? "C"
        : "D";

    bool pass = marks.every((m) => m >= 40);

    students.add({
      'name': name,
      'marks': marks,
      'total': total,
      'percentage': percentage,
      'grade': grade,
      'pass': pass,
    });
  }

  double classAvg =
      students.map((s) => s['percentage']).reduce((a, b) => a + b) / n;

  print("\n================ CLASS REPORT ================");
  for (var s in students) {
    print("\nName: ${s['name']}");
    print("Marks: ${s['marks']}");
    print("Total: ${s['total']}");
    print("Percentage: ${s['percentage'].toStringAsFixed(2)}%");
    print("Grade: ${s['grade']}");
    print("Status: ${s['pass'] ? 'PASS' : 'FAIL'}");
    print("---------------------------------------------");
  }

  print("Class Average: ${classAvg.toStringAsFixed(2)}%");
  print("=================================================\n");
}
