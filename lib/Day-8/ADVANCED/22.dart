//* Q22. Movie Ticket Validator:
//* age = 16, hasParent = false, movieRating = 'A'
//* Logic: A-rated movies need age >= 18 OR (age >= 13 AND hasParent)
//* Check: movieRating == 'A' && (age >= 18 || (age >= 13 && hasParent))
//* Use ternary to print: 'Entry Allowed' or 'Entry Denied'

void main() {
  int age = 16;
  bool hasParent = false;
  String movieRating = "A";
  print(
    age >= 18 || (age >= 13 && hasParent) ? 'Entry Allowed' : 'Entry Denied',
  );
  print(
    movieRating == 'A' && (age >= 18 || (age >= 13 && hasParent))
        ? 'Entry Allowed'
        : 'Entry Denied',
  );
}
