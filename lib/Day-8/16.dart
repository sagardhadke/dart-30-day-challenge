//* Q16. Grade Assignment:
//* marks = 85
//* String grade = marks >= 90 ? 'A' : marks >= 75 ? 'B' : 'C'; (nested ternary)
//* Print grade

void main() {
  int marks = 85;
  String grade = marks >= 90
      ? "A"
      : marks >= 75
      ? "B"
      : "C";
  print(grade);
}
