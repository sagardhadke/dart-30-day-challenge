//* Question 1: Complete Student Database
//* Take number of students (max 5) as input. For each student take: name, age, and marks for 3 subjects. Store in appropriate data structure (map with nested data). Calculate for each: total marks, percentage, grade using ternary (>=90: A+, >=75: A, >=60: B, else: C). Find class topper and average percentage. Use print() with escape sequences to display formatted class report with all student details.

import 'dart:io';

void main() {
  print("=== STUDENT DATABASE SYSTEM ===");

  stdout.write("Enter number of students (max 5): ");
  int n = int.parse(stdin.readLineSync()!);
  if (n > 5) n = 5;

  List<Map<String, dynamic>> students = [];

  for (int i = 0; i < n; i++) {
    print("\n--- Enter details for Student ${i + 1} ---");

    stdout.write("Name: ");
    String name = stdin.readLineSync()!;

    stdout.write("Age: ");
    int age = int.parse(stdin.readLineSync()!);

    List<int> marks = [];
    for (int j = 1; j <= 3; j++) {
      stdout.write("Marks for subject $j: ");
      marks.add(int.parse(stdin.readLineSync()!));
    }

    int total = marks.reduce((a, b) => a + b);
    double percentage = total / 3;

    String grade = percentage >= 90
        ? "A+"
        : percentage >= 75
        ? "A"
        : percentage >= 60
        ? "B"
        : "C";

    students.add({
      'name': name,
      'age': age,
      'marks': marks,
      'total': total,
      'percentage': percentage,
      'grade': grade,
    });
  }

  students.sort((a, b) => b['percentage'].compareTo(a['percentage']));
  var topper = students.first;

  double avgPercentage =
      students.fold(0.0, (sum, s) => sum + s['percentage']) / students.length;

  print("\n\n======= CLASS REPORT =======\n");

  for (var s in students) {
    print(
      "Name: ${s['name']}\nAge: ${s['age']}\nTotal: ${s['total']}\nPercentage: ${s['percentage'].toStringAsFixed(2)}%\nGrade: ${s['grade']}\n-----------------------",
    );
  }

  print(
    "Class Topper: ${topper['name']} (${topper['percentage'].toStringAsFixed(2)}%)",
  );
  print("Average Class Percentage: ${avgPercentage.toStringAsFixed(2)}%");
}
