//* Question 10: Student Report Card Generator
//* Take 3 students data: name and marks for 5 subjects.
//* Create functions:
//* - calculateTotal(marksList) - uses for loop
//* - calculatePercentage(total) - returns percentage
//* - assignGrade(percentage) - uses nested if-else
//* - checkPass(marksList) - uses for loop, returns true if all >=40
//*
//* Store students in list of maps. Use nested for loops to process all students. Display complete class report with:
//* - Individual report cards
//* - Class average
//* - Topper details
//* - Pass percentage

import 'dart:io';

int calculateTotal(List<int> marks) {
  int total = 0;
  for (int m in marks) {
    total += m;
  }
  return total;
}

double calculatePercentage(int total, int subjects) {
  return total / subjects;
}

String assignGrade(double percentage) {
  if (percentage >= 90) {
    return "A+";
  } else if (percentage >= 80) {
    return "A";
  } else if (percentage >= 70) {
    return "B";
  } else if (percentage >= 60) {
    return "C";
  } else if (percentage >= 50) {
    return "D";
  } else {
    return "F";
  }
}

bool checkPass(List<int> marks) {
  for (int m in marks) {
    if (m < 40) {
      return false;
    }
  }
  return true;
}

void main() {
  List<Map<String, dynamic>> students = [];

  const int studentCount = 3;
  const int subjectCount = 5;

  for (int i = 1; i <= studentCount; i++) {
    stdout.write("\nEnter Student $i Name: ");
    String name = stdin.readLineSync()!;

    List<int> marks = [];
    for (int j = 1; j <= subjectCount; j++) {
      stdout.write("Enter marks for Subject $j: ");
      marks.add(int.parse(stdin.readLineSync()!));
    }

    students.add({"name": name, "marks": marks});
  }

  double classTotalPercentage = 0;
  int passCount = 0;
  double highestPercentage = 0;
  String topperName = "";

  print("\n================ STUDENT REPORT CARDS ================\n");

  for (var student in students) {
    String name = student['name'];
    List<int> marks = student['marks'];

    int total = calculateTotal(marks);
    double percentage = calculatePercentage(total, subjectCount);
    String grade = assignGrade(percentage);
    bool isPass = checkPass(marks);

    classTotalPercentage += percentage;
    if (isPass) passCount++;

    if (percentage > highestPercentage) {
      highestPercentage = percentage;
      topperName = name;
    }

    print("Name       : $name");
    print("Marks      : ${marks.join(', ')}");
    print("Total      : $total");
    print("Percentage : ${percentage.toStringAsFixed(2)}%");
    print("Grade      : $grade");
    print("Result     : ${isPass ? "PASS" : "FAIL"}");
    print("---------------------------------------------------");
  }

  double classAverage = classTotalPercentage / students.length;
  double passPercentage = (passCount / students.length) * 100;

  print("\n================ CLASS SUMMARY =================");
  print("Total Students : ${students.length}");
  print("Class Average  : ${classAverage.toStringAsFixed(2)}%");
  print(
    "Topper         : $topperName (${highestPercentage.toStringAsFixed(2)}%)",
  );
  print("Pass %         : ${passPercentage.toStringAsFixed(2)}%");
  print("================================================\n");
}
