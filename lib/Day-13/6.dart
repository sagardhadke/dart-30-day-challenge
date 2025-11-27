//* Question 6: Movie Collection Organizer
//* Create a map of 7 movies with their ratings (out of 10). Calculate average rating of your collection. Count how many movies have rating >= 8 (highly rated). Count how many have rating < 6 (poor rated). Find the highest and lowest rated movies. Print complete analysis.

void main() {
  Map<String, double> movies = {
    'Inception': 8.8,
    'Interstellar': 8.6,
    'Avengers': 8.4,
    'The Dark Knight': 9.0,
    'Titanic': 7.8,
    'Avatar': 7.8,
    'The Matrix': 8.7,
  };

  double totalRating = movies.values.reduce((a, b) => a + b);
  double averageRating = totalRating / movies.length;

  int highlyRated = movies.values.where((rating) => rating >= 8.0).length;
  int poorRated = movies.values.where((rating) => rating < 6.0).length;

  String highestRatedMovie = movies.keys.firstWhere(
    (key) => movies[key] == movies.values.reduce((a, b) => a > b ? a : b),
  );
  String lowestRatedMovie = movies.keys.firstWhere(
    (key) => movies[key] == movies.values.reduce((a, b) => a < b ? a : b),
  );

  print("Average rating: $averageRating");
  print("Highly rated (>=8): $highlyRated");
  print("Poor rated (<6): $poorRated");
  print("Highest rated movie: $highestRatedMovie");
  print("Lowest rated movie: $lowestRatedMovie");
}
