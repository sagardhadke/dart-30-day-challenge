//* Question 7: Exam Marks Analyzer
//* Create a list of 10 students' marks. Count how many passed (>= 40). Calculate class average. Find how many scored above average and below average. Use comparison and logical operators. Print complete statistics.

void main() {
  List<int> marks = [35, 78, 92, 40, 55, 66, 28, 81, 49, 72];

  int passed = marks.where((m) => m >= 40).length;

  double average = marks.reduce((a, b) => a + b) / marks.length;

  int aboveAvg = marks.where((m) => m > average).length;
  int belowAvg = marks.where((m) => m < average).length;

  print("Passed Students: $passed");
  print("Class Average: $average");
  print("Above Average: $aboveAvg");
  print("Below Average: $belowAvg");
}
