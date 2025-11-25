//* Question 1: Exam Performance Predictor
//* Create a map of students with their marks in 3 subjects stored as a list. Calculate total and percentage for each. Predict final grade using: percentage >= 90 AND all subjects >= 80 (A+), percentage >= 80 AND no subject < 70 (A), percentage >= 70 AND no subject < 60 (B), otherwise (C). Print complete report card with predictions.

void main() {
  Map<String, List<int>> students = {
    "Aman": [85, 92, 88],
    "Riya": [78, 69, 74],
    "Karan": [90, 95, 93],
    "Neha": [55, 60, 58],
  };

  students.forEach((name, marks) {
    int total = marks.reduce((a, b) => a + b);
    double percentage = total / 3;

    String grade = "";
    if (percentage >= 90 && marks.every((m) => m >= 80)) {
      grade = "A+";
    } else if (percentage >= 80 && marks.every((m) => m >= 70)) {
      grade = "A";
    } else if (percentage >= 70 && marks.every((m) => m >= 60)) {
      grade = "B";
    } else {
      grade = "C";
    }

    print(
      "$name → Total: $total, %: ${percentage.toStringAsFixed(2)}, Grade: $grade",
    );
  });
}
