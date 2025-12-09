//* Question 16: Number Guessing Game with While Loop
//* Generate a random number between 1-100 (you can hardcode a number for now). Use a while loop to keep asking user to guess. Give hints "Too high" or "Too low". Count number of attempts. Game ends when user guesses correctly.

import 'dart:io';

void main() {
  int target = 42;
  int guess;
  int attempts = 0;
  do {
    stdout.write("Guess the number (1-100): ");
    guess = int.parse(stdin.readLineSync()!);
    attempts++;
    if (guess > target) {
      print("Too high");
    } else if (guess < target) {
      print("Too low");
    }
  } while (guess != target);
  print("Correct! Attempts: $attempts");
}
