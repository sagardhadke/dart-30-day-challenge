//* Q12. Temperature list: [32, 35, 31, 30, 33, 36, 34]
// Add a new temperature, remove the first one, print updated list.

void main() {
  List<int> temperature = [32, 35, 31, 30, 33, 36, 34];
  temperature.add(37);
  temperature.removeAt(0);
  print(temperature);
}
