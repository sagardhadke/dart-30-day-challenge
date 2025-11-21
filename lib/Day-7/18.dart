//* Q18. Percentage Calculator: Total marks = 500, obtained = 425. Calculate:
//* Percentage: (obtained / total) * 100
//* Is percentage >= 75? (comparison)
//* Is percentage == 85? (comparison)

void main() {
  double totalMarks = 500;
  double obtained = 425;
  double percentage = (obtained / totalMarks) * 100;

  print("Percentage: $percentage");
  print("Is percentage >= 75? ${percentage >= 75}");
  print("Is percentage == 85? ${percentage == 85}");
}
