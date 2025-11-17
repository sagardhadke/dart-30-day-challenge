//* Q4. Find Highest Population City

//* Given a map of city → population,
//* find and print the city with the highest population.

void main() {
  Map<String, dynamic> cities = {
    "Mumbai": 21673570,
    "Rajasthan": 83100000,
    "Pune": 5057709,
    "Kolhapur": 802000,
  };

  int max = 0;
  String maxCity = "";

  cities.forEach((key, value) {
    if (value > max) {
      max = value;
      maxCity = key;
    }
  });

  print("Max City Population $maxCity : $max");
}
