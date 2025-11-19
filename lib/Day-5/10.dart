//* Q10. Create a student marks list (5 subjects). Calculate: total average Then print: "Total: X, Average: Y"

void main() {
  List<int> marks = [85, 65, 75, 92, 60];
  int total = 0;
  double average = 0;

  for (int i = 0; i <= marks.length - 1; i++) {
    total += marks[i];
  }
  average = total / marks.length;
  print("Total: $total, Average: ${average.toStringAsFixed(2)}");
}
