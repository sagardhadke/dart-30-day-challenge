//* Question 15: Number Guessing Game
//* Create a number guessing game:
//* - System selects a random number between 1-50 (you can hardcode it as 25 for testing)
//* - User gets 7 attempts to guess
//* - Give hints: "Too high" or "Too low"
//* - Use break when correct number is guessed
//* - Use continue to skip invalid inputs (negative numbers or numbers > 50)
//* - Display number of attempts taken
//* - If all 7 attempts used, reveal the number

import 'dart:io';

void main() {
  int secretNumber = 25;
  int attempts = 7;

  while (attempts > 0) {
    print('Guess the number between 1 and 50: ');
    int guess = int.parse(stdin.readLineSync()!);

    if (guess < 1 || guess > 50) {
      print('Invalid input, try again.');
      continue;
    }

    if (guess == secretNumber) {
      print('Correct! You guessed the number in ${8 - attempts} attempts.');
      break;
    } else if (guess < secretNumber) {
      print('Too low!');
    } else {
      print('Too high!');
    }

    attempts--;
  }

  if (attempts == 0) {
    print('You\'ve run out of attempts! The correct number was $secretNumber.');
  }
}
