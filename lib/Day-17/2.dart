//* Question 2: Movie Rating System
//* Create a map of 5 movies with their ratings (1-10). Display all movies using print(). Take a movie name as input using stdout.write(). Check if movie exists using .containsKey(). If exists, use ternary operator to print: rating >= 8 ? "Highly Recommended" : rating >= 6 ? "Good" : "Average". Print result with print().

import 'dart:io';

void main() {
  Map<String, int> movies = {
    "Inception": 9,
    "Avatar": 8,
    "Joker": 7,
    "RRR": 9,
    "Dune": 8,
  };

  print("Available Movies: ");
  movies.forEach((key, value) => print("$key → Rating: $value"));

  stdout.write("\nEnter movie name: ");
  String name = stdin.readLineSync()!;

  if (movies.containsKey(name)) {
    int rating = movies[name]!;
    String result = rating >= 8
        ? "Highly Recommended"
        : rating >= 6
        ? "Good"
        : "Average";

    print("Movie: $name → $result");
  } else {
    print("Movie not found.");
  }
}
