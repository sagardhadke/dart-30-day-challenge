//* 14. Sort List<String> names alphabetically and print the sorted list (use sort()).

void main() {
  List<String> names = ["A", "Z", "D", "Y", "B"];
  names.sort((a, b) {
    return a.compareTo(b);
  });
  print(names);
}
