//* Question 20: Game Menu System with Switch and Loop Control
//* Create a game menu with multiple mini-games using switch case:
//*
//* Main Menu:
//* 1. Number Guessing Game
//* 2. Even/Odd Game
//* 3. Multiplication Quiz
//* 4. Prime Number Checker
//* 5. Exit
//*
//* Game 1 - Number Guessing:
//* - Guess number between 1-100
//* - 5 attempts
//* - Use break when guessed correctly
//* - Use continue for invalid inputs
//*
//* Game 2 - Even/Odd Game:
//* - System shows a number
//* - User guesses if it's even or odd
//* - 10 rounds
//* - Track score
//* - Use continue if invalid input (not E or O)
//*
//* Game 3 - Multiplication Quiz:
//* - Ask 5 random multiplication questions (hardcode questions)
//* - Use break if user types "quit"
//* - Use continue if invalid answer format
//* - Show score at end
//*
//* Game 4 - Prime Checker:
//* - Take a number
//* - Check if prime
//* - Use break to exit check loop when divisor found
//* - Ask if user wants to check another number
//*
//* Main System:
//* - Use while loop to keep showing main menu
//* - Use switch case for menu selection
//* - Use break to exit main loop when option 5 selected
//* - Track total games played
//* - Display game statistics when exiting
//*
//* Display formatted output with game instructions, scores, and results.

import 'dart:io';
import 'dart:math';

void main() {
  int gamesPlayed = 0;
  int totalScore = 0;

  while (true) {
    print('--- Game Menu ---');
    print('1. Number Guessing Game');
    print('2. Even/Odd Game');
    print('3. Multiplication Quiz');
    print('4. Prime Number Checker');
    print('5. Exit');
    stdout.write('Enter your choice: ');

    int? choice = int.tryParse(stdin.readLineSync()!);

    if (choice == null || choice < 1 || choice > 5) {
      print('Invalid input, please enter a valid number');
      continue;
    }

    if (choice == 5) break;

    switch (choice) {
      case 1:
        numberGuessingGame();
        break;
      case 2:
        totalScore += evenOddGame();
        break;
      case 3:
        totalScore += multiplicationQuiz();
        break;
      case 4:
        primeNumberChecker();
        break;
      default:
        print('Invalid choice');
    }

    gamesPlayed++;
  }

  print('Exiting... Games played: $gamesPlayed, Total score: $totalScore');
}

void numberGuessingGame() {
  int secretNumber = Random().nextInt(100) + 1;
  int attempts = 5;

  while (attempts > 0) {
    stdout.write('Guess the number between 1 and 100: ');
    int guess = int.parse(stdin.readLineSync()!);

    if (guess < 1 || guess > 100) {
      print('Invalid input, try again.');
      continue;
    }

    if (guess == secretNumber) {
      print('Correct! You guessed the number in ${6 - attempts} attempts.');
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

int evenOddGame() {
  int score = 0;
  for (int round = 1; round <= 10; round++) {
    int number = Random().nextInt(100) + 1;
    stdout.write('Round $round: Is $number Even or Odd? (E/O): ');
    String answer = stdin.readLineSync()!.toUpperCase();

    if (answer != 'E' && answer != 'O') {
      print('Invalid input. Skipping round.');
      continue;
    }

    bool isEven = number % 2 == 0;
    if ((isEven && answer == 'E') || (!isEven && answer == 'O')) {
      print('Correct!');
      score++;
    } else {
      print('Incorrect!');
    }
  }
  print('Even/Odd Game over. Your score: $score');
  return score;
}

int multiplicationQuiz() {
  int score = 0;
  List<List<int>> questions = [
    [2, 3],
    [4, 5],
    [6, 7],
    [8, 9],
    [10, 11],
  ];

  for (var q in questions) {
    int a = q[0], b = q[1];
    stdout.write('What is $a × $b? (or type quit to exit): ');
    String? ans = stdin.readLineSync();

    if (ans == null) {
      print('Invalid answer format');
      continue;
    }

    if (ans.toLowerCase() == 'quit') {
      print('Quiz aborted.');
      break;
    }

    int? answer = int.tryParse(ans);
    if (answer == null) {
      print('Invalid input, skipping question');
      continue;
    }

    if (answer == a * b) {
      print('Correct!');
      score++;
    } else {
      print('Wrong! Correct answer: ${a * b}');
    }
  }

  print('Multiplication Quiz over. Your score: $score');
  return score;
}

void primeNumberChecker() {
  while (true) {
    stdout.write('Enter a number to check if it\'s prime (or 0 to stop): ');
    int number = int.parse(stdin.readLineSync()!);

    if (number == 0) break;

    bool isPrime = true;
    if (number < 2) {
      isPrime = false;
    } else {
      for (int i = 2; i <= sqrt(number).toInt(); i++) {
        if (number % i == 0) {
          isPrime = false;
          break;
        }
      }
    }

    if (isPrime) {
      print('$number is a prime number.');
    } else {
      print('$number is not a prime number.');
    }

    stdout.write('Check another? (Y/N): ');
    String? more = stdin.readLineSync();
    if (more?.toUpperCase() != 'Y') break;
  }
}
