//* Question 9: Map with Multiple Operations
//* Create a map of 5 students with their marks. Calculate total marks of all students combined. Count how many scored above 75. Update one student's marks. Print complete analysis.

void main() {
  Map<String, dynamic> students = {"A": 98, "B": 77, "C": 42, "D": 68, "E": 89};

  num total = 0;
  Map<String, dynamic> scoredStudent = {};
  students['A'] = 89;

  students.forEach((key, value) {
    total += value;
    if (value >= 75) {
      scoredStudent.addAll({key: value});
    }
  });
  print("Total Marks: $total");
  print("Scored above 75: $scoredStudent");
}
