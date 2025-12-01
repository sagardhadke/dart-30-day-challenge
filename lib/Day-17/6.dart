//* Question 6: Employee Attendance Tracker
//* Take number of employees (max 5) as input. For each employee, take name and days present (out of 30) as input. Store in a map. For each employee calculate attendance percentage. Use logical operators to determine bonus eligibility: (attendance >= 95) && (days_present >= 28). Use ternary for performance rating: >= 95 ? "Excellent" : >= 85 ? "Good" : >= 75 ? "Average" : "Poor". Use print() to display formatted attendance report for all employees with bonus status.

import 'dart:io';

void main() {
  stdout.write("Enter number of employees (max 5): ");
  int empCount = int.parse(stdin.readLineSync()!);

  Map<String, int> attendance = {};

  for (int i = 1; i <= empCount; i++) {
    stdout.write("Enter employee name: ");
    String name = stdin.readLineSync()!;

    stdout.write("Enter days present (out of 30): ");
    int days = int.parse(stdin.readLineSync()!);

    attendance[name] = days;
  }

  print("\n------ ATTENDANCE REPORT ------");

  attendance.forEach((name, days) {
    double percent = (days / 30) * 100;

    String rating = percent >= 95
        ? "Excellent"
        : percent >= 85
        ? "Good"
        : percent >= 75
        ? "Average"
        : "Poor";

    bool bonus = (percent >= 95) && (days >= 28);

    print("\nEmployee: $name");
    print("Days Present: $days");
    print("Attendance %: $percent");
    print("Performance: $rating");
    print("Bonus Eligible: ${bonus ? "YES" : "NO"}");
  });
}
