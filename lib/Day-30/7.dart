//* Question 7: Student Attendance Tracker
//* Create a map of 5 students with attendance percentage. Use for loop to iterate through map. Use if-else to categorize: >=90 "Excellent", >=75 "Good", >=60 "Average", else "Poor". Count students in each category. Display formatted report.

void main() {
  Map<String, int> attendance = {
    "Amit": 92,
    "Ravi": 78,
    "Neha": 65,
    "Pooja": 55,
    "Karan": 88,
  };

  Map<String, int> count = {"Excellent": 0, "Good": 0, "Average": 0, "Poor": 0};

  attendance.forEach((name, percent) {
    String category;
    if (percent >= 90) {
      category = "Excellent";
    } else if (percent >= 75) {
      category = "Good";
    } else if (percent >= 60) {
      category = "Average";
    } else {
      category = "Poor";
    }
    count[category] = count[category]! + 1;
    print("$name : $percent% → $category");
  });

  print("\nSummary:");
  count.forEach((k, v) => print("$k : $v students"));
}
