//* Question 1: Temperature Data Manager
//* Create a list of 7 days' temperatures. Calculate the average temperature. Find how many days were above 30°C and how many were below 25°C. Print all results.

void main() {
  List<double> temperatures = [32, 28, 30, 35, 31, 24, 26];

  double sum = 0;
  for (var temp in temperatures) {
    sum += temp;
  }
  double average = sum / temperatures.length;

  int above30 = temperatures.where((t) => t > 30).length;
  int below25 = temperatures.where((t) => t < 25).length;

  print("Average Temperature: $average");
  print("Days above 30°C: $above30");
  print("Days below 25°C: $below25");
}
