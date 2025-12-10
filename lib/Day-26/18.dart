//* Question 18: Student Grade Analysis with Break/Continue
//* Create a student marks entry system:
//* - Take number of students as input
//* - For each student, take marks for 5 subjects
//* - Use continue to skip and re-enter if any mark is invalid (negative or > 100)
//* - Calculate total and percentage
//* - Use switch case for grade assignment (based on percentage/10)
//* - Stop taking input if "STOP" is entered as student name (use break)
//* - Display complete report of all students entered
//*
//* Grade assignment using switch:
//* case 10, 9: A+
//* case 8: A
//* case 7: B
//* case 6: C
//* case 5: D
//* default: F

import 'dart:io';

void main() {
  List<Map<String, dynamic>> students = [];

  while (true) {
    print('Enter student name (or "STOP" to stop): ');
    String name = stdin.readLineSync()!;

    if (name == 'STOP') break;

    List<int> marks = [];
    int total = 0;

    for (int i = 1; i <= 5; i++) {
      print('Enter marks for subject $i: ');
      int mark = int.parse(stdin.readLineSync()!);

      if (mark < 0 || mark > 100) {
        print('Invalid mark. Please re-enter.');
        i--;
        continue;
      }

      marks.add(mark);
      total += mark;
    }

    double percentage = total / 5;
    String grade;

    switch (percentage ~/ 10) {
      case 10:
      case 9:
        grade = 'A+';
        break;
      case 8:
        grade = 'A';
        break;
      case 7:
        grade = 'B';
        break;
      case 6:
        grade = 'C';
        break;
      case 5:
        grade = 'D';
        break;
      default:
        grade = 'F';
    }

    students.add({
      'name': name,
      'marks': marks,
      'total': total,
      'percentage': percentage,
      'grade': grade,
    });
  }

  print('Student Report:');
  for (var student in students) {
    print('Name: ${student['name']}');
    print('Marks: ${student['marks']}');
    print('Total: ${student['total']}');
    print('Percentage: ${student['percentage']}');
    print('Grade: ${student['grade']}');
    print('---');
  }
}
