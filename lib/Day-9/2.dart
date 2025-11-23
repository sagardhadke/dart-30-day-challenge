//* Question 2: Student Ranking System
//* Create a map of 8 students with their marks. Find the top 3 students and their ranks.
//* Calculate class average.
//* Count how many students scored above average and below average.
//* Print complete report with all statistics.

void main() {
  Map<String, int> students = {
    "Raghav": 85,
    "Meera": 72,
    "Mithun": 90,
    "Akshay": 86,
    "Aishwarya": 95,
    "Dhiya": 80,
    "Gopi": 78,
    "Riddhi": 88,
  };

  List<MapEntry<String, int>> sortedStudents = students.entries.toList();
  sortedStudents.sort((a, b) => b.value.compareTo(a.value));

  for (int i = 0; i < 3; i++) {
    print(
      "Rank ${i + 1}: ${sortedStudents[i].key} with ${sortedStudents[i].value} marks",
    );
  }
  int totalMarks = students.values.reduce((a, b) => a + b);
  // print(totalMarks);
  double average = totalMarks / students.length;
  print("\nClass Average: ${average.toStringAsFixed(2)}");
  int aboveAverage = 0;
  int belowAverage = 0;

  students.forEach((name, mark) {
    if (mark > average) {
      aboveAverage++;
    } else if (mark < average) {
      belowAverage++;
    }
  });

  print("Number of students above average: $aboveAverage");
  print("Number of students below average: $belowAverage");

  print("\nComplete Student Report:");
  students.forEach((name, mark) {
    print("$name : $mark marks");
  });
}
