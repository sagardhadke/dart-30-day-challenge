//* Question 8: Student Attendance System
//* Create a map of 8 students with their attendance percentages. Check eligibility for exams using: attendance >= 75. Use logical operators to categorize: attendance >= 90 = 'Excellent', >= 75 = 'Good', >= 60 = 'Average', else = 'Poor'. For each student print: name, attendance%, category, and exam eligibility (Yes/No). Count how many are eligible.

void main() {
  Map<String, double> studentAttendance = {
    'Alice': 92.0,
    'Bob': 85.0,
    'Charlie': 78.0,
    'David': 60.0,
    'Eva': 50.0,
    'Frank': 88.0,
    'Grace': 95.0,
    'Hank': 72.0,
  };

  int eligibleCount = 0;

  studentAttendance.forEach((name, attendance) {
    String category = (attendance >= 90)
        ? 'Excellent'
        : (attendance >= 75)
        ? 'Good'
        : (attendance >= 60)
        ? 'Average'
        : 'Poor';

    String eligibility = (attendance >= 75) ? 'Yes' : 'No';

    print(
      "$name: Attendance = $attendance%, Category = $category, Exam Eligibility = $eligibility",
    );

    if (attendance >= 75) eligibleCount++;
  });

  print("Total eligible for exams: $eligibleCount");
}
