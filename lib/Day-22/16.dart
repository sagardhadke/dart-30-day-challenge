//* Question 16: Student Report Card Generator
//* Take student details as input: name, roll number, class, section. Take marks for 5 subjects using stdout.write() prompts. Calculate:
//* - Total marks
//* - Percentage
//* - Grade using logic: >=90: A+, >=80: A, >=70: B, >=60: C, else: D
//* - Status: Pass if all subjects >= 40, else Fail
//*
//* Create comprehensive report card:
//* ================================================
//*      SCHOOL NAME - REPORT CARD
//* ================================================
//*
//* Student Details:
//*     Name:           [name]
//*     Roll Number:    [roll]
//*     Class:          [class]
//*     Section:        [section]
//*     Academic Year:  2024-2025
//*
//* ================================================
//* SUBJECT            MARKS    GRADE
//* ------------------------------------------------
//* Mathematics        [m1]     [g1]
//* Science            [m2]     [g2]
//* English            [m3]     [g3]
//* Social Studies     [m4]     [g4]
//* Hindi              [m5]     [g5]
//* ------------------------------------------------
//* TOTAL:             [total]
//* PERCENTAGE:        [percentage]%
//* OVERALL GRADE:     [grade]
//* STATUS:            [Pass/Fail]
//* ================================================
//*
//* Teacher's Remarks: [Add remarks based on performance]
//*
//* Class Teacher: _________    Principal: _________
//*
//* ================================================

import 'dart:io';

String gradeCalc(int m) {
  if (m >= 90) return "A+";
  if (m >= 80) return "A";
  if (m >= 70) return "B";
  if (m >= 60) return "C";
  return "D";
}

void main() {
  stdout.write("Enter name: ");
  String name = stdin.readLineSync()!;

  stdout.write("Enter roll number: ");
  String roll = stdin.readLineSync()!;

  stdout.write("Enter class: ");
  String cls = stdin.readLineSync()!;

  stdout.write("Enter section: ");
  String sec = stdin.readLineSync()!;

  List<String> subjects = [
    "Mathematics",
    "Science",
    "English",
    "Social Studies",
    "Hindi",
  ];

  List<int> marks = [];
  for (var s in subjects) {
    stdout.write("Enter marks for $s: ");
    marks.add(int.parse(stdin.readLineSync()!));
  }

  int total = marks.reduce((a, b) => a + b);
  double percent = total / 5;

  String overallGrade = gradeCalc(percent.toInt());
  bool pass = marks.every((m) => m >= 40);

  print("================================================");
  print("     SCHOOL NAME - REPORT CARD");
  print("================================================");
  print("Student Details:");
  print("    Name:\t$name");
  print("    Roll Number:\t$roll");
  print("    Class:\t$cls");
  print("    Section:\t$sec");
  print("    Academic Year:\t2024-2025");
  print("================================================");
  print("SUBJECT\t\tMARKS\tGRADE");
  print("------------------------------------------------");

  for (int i = 0; i < subjects.length; i++) {
    print("${subjects[i]}\t${marks[i]}\t${gradeCalc(marks[i])}");
  }

  print("------------------------------------------------");
  print("TOTAL:\t$total");
  print("PERCENTAGE:\t${percent.toStringAsFixed(2)}%");
  print("OVERALL GRADE:\t$overallGrade");
  print("STATUS:\t${pass ? "Pass" : "Fail"}");
  print("================================================");
  print(
    "Teacher's Remarks: ${pass ? "Good performance" : "Needs improvement"}",
  );
  print("Class Teacher: _________    Principal: _________");
  print("================================================");
}
