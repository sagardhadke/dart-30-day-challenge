//* Question 17: Map and List Combined
//* Create a map of 5 students where each value is a list of 3 subject marks. Use nested for loops to:
//* - Calculate total marks for each student
//* - Calculate percentage for each student
//* - Find the class topper
//* - Print complete report with all students' details

void main() {
  Map<String, List<int>> students = {
    'Alice': [85, 90, 80],
    'Bob': [92, 95, 93],
    'Charlie': [78, 75, 80],
    'David': [88, 85, 90],
    'Eve': [85, 70, 75],
  };

  double classTopper = 0;
  String topperName = '';
  Map<String, double> studentTotalMarks = {};

  students.forEach((name, marks) {
    int totalMarks = marks.reduce((a, b) => a + b);
    double percentage = totalMarks / 3;

    studentTotalMarks[name] = percentage;

    if (percentage > classTopper) {
      classTopper = percentage;
      topperName = name;
    }
  });

  print('Class Topper: $topperName with $classTopper%');
  studentTotalMarks.forEach((name, percentage) {
    print('Student: $name, Total Percentage: $percentage%');
  });
}
