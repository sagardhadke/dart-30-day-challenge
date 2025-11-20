//* Q20. Build an expression that calculates the final score of a student:
//* (assignments * 0.3) + (mid * 0.3) + (finalExam * 0.4)

void main() {
  double assignments = 80;
  double mid = 70;
  double finalExam = 90;

  double score = (assignments * 0.3) + (mid * 0.3) + (finalExam * 0.4);

  print("Final Score: $score");
}
