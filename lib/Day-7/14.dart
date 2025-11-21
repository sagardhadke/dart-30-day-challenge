//* Q14. Marks Comparison: Three students scored 85, 90, and 85. Check and print:
//* Is student1 equal to student3? (85 == 85)
//* Is student2 better than student1? (90 > 85)
//* Is student1 not equal to student2? (85 != 90)

void main() {
  int student1 = 85;
  int student2 = 90;
  int student3 = 85;
  print("Is student1 equal to student3: ${student1 == student3}");
  print("Is student2 better than student1: ${student2 > student1}");
  print("Is student1 not equal to student2: ${student1 != student2}");
}
