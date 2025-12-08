//* Question 20: Student Grade Analysis System
//* Create a map of 10 students with their marks (0-100). Use for loops to:
//* - Count how many students got A grade (>=90)
//* - Count how many got B grade (>=80)
//* - Count how many got C grade (>=70)
//* - Count how many got D grade (>=60)
//* - Count how many failed (<40)
//* - Calculate class average
//* - Find highest and lowest marks
//* - Create a list of students who scored above class average
//*
//* Use final variables to store grade boundaries (const for grade thresholds).
//* Display complete analysis with:
//* - Grade distribution
//* - Class statistics
//* - Top performers list
//* - Students needing improvement
//* Test with sample data of 10 students with varying marks.

void main() {
  const int gradeA = 90;
  const int gradeB = 80;
  const int gradeC = 70;
  const int gradeD = 60;
  const int failMark = 40;

  final Map<String, int> students = {
    "Ali": 95,
    "Sara": 82,
    "John": 73,
    "Rania": 67,
    "Khalid": 58,
    "Omar": 31,
    "Fatima": 89,
    "Lina": 92,
    "Bilal": 44,
    "Mona": 77,
  };

  int countA = 0, countB = 0, countC = 0, countD = 0, countFail = 0;

  int totalMarks = 0;
  int highestMark = -1;
  int lowestMark = 101;

  List<String> aboveAverage = [];

  students.forEach((name, marks) {
    totalMarks += marks;

    if (marks >= gradeA)
      countA++;
    else if (marks >= gradeB)
      countB++;
    else if (marks >= gradeC)
      countC++;
    else if (marks >= gradeD)
      countD++;
    else if (marks < failMark)
      countFail++;

    if (marks > highestMark) highestMark = marks;
    if (marks < lowestMark) lowestMark = marks;
  });

  double average = totalMarks / students.length;

  students.forEach((name, marks) {
    if (marks > average) aboveAverage.add(name);
  });

  print("=========== STUDENT GRADE ANALYSIS ===========\n");

  print("Grade Distribution:");
  print("A (>=90): $countA students");
  print("B (>=80): $countB students");
  print("C (>=70): $countC students");
  print("D (>=60): $countD students");
  print("Fail (<40): $countFail students\n");

  print("Class Statistics:");
  print("Class Average: ${average.toStringAsFixed(2)}");
  print("Highest Mark: $highestMark");
  print("Lowest Mark: $lowestMark\n");

  print("Top Performers (Above Average):");
  for (var s in aboveAverage) {
    print(" - $s (${students[s]})");
  }

  print("\nStudents Needing Improvement (<40):");
  students.forEach((name, marks) {
    if (marks < failMark) print(" - $name ($marks)");
  });
}
