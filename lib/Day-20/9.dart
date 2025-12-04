//* Question 9: Detailed Report Card
//* Take student name, roll number, and marks for 5 subjects as input. Generate comprehensive report card:
//* ================================================
//*      SCHOOL NAME - REPORT CARD
//* ================================================
//*
//* Student Details:
//*     Name:           [name]
//*     Roll Number:    [roll]
//*     Class:          10th
//*     Section:        A
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
//* ================================================
//*
//* Result: [PASS/FAIL]
//*
//* Teacher's Signature: _________
//* Principal's Signature: _________
//*
//* ================================================

void main() {
  String name = "Rahul Sharma";
  int roll = 21;

  int m1 = 88, m2 = 92, m3 = 85, m4 = 90, m5 = 80;
  int total = m1 + m2 + m3 + m4 + m5;
  double percentage = total / 5;

  String grade = percentage >= 90
      ? "A+"
      : percentage >= 80
      ? "A"
      : percentage >= 70
      ? "B"
      : percentage >= 60
      ? "C"
      : "D";

  String passFail = percentage >= 33 ? "PASS" : "FAIL";

  print(
    "================================================\n"
    "     SCHOOL NAME - REPORT CARD\n"
    "================================================\n\n"
    "Student Details:\n"
    "    Name:\t\t$name\n"
    "    Roll Number:\t$roll\n"
    "    Class:\t\t10th\n"
    "    Section:\t\tA\n\n"
    "================================================\n"
    "SUBJECT\t\tMARKS\tGRADE\n"
    "------------------------------------------------\n"
    "Mathematics\t$m1\tA\n"
    "Science\t\t$m2\tA\n"
    "English\t\t$m3\tA\n"
    "Social Studies\t$m4\tA\n"
    "Hindi\t\t$m5\tA\n"
    "------------------------------------------------\n"
    "TOTAL:\t\t$total\n"
    "PERCENTAGE:\t$percentage%\n"
    "OVERALL GRADE:\t$grade\n"
    "================================================\n\n"
    "Result: $passFail\n\n"
    "Teacher's Signature: _________\n"
    "Principal's Signature: _________\n\n"
    "================================================",
  );
}
