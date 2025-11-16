//* Merge two lists: boys = [“A”, “B”, “C”], girls = [“D”, “E”] into a single list called students.

void main() {
  List<String> boys = ["A", "B", "C"];
  List<String> girls = ["D", "E"];
  List<String> students = [];

  //* Method 1

  students.insertAll(0, boys);
  students.insertAll(students.length, girls);
  print(students);

  //* Method 2
  students.addAll(boys);
  students.addAll(girls);
  print(students);
}
