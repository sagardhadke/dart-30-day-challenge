//* Day - 25 Questions
/*

* LEVEL 1: FOUNDATION (Questions 1-7)

Question 1: Simple While Loop
Use a while loop to print numbers from 1 to 15. Each number on a new line.

Question 2: Do-While Basic
Use a do-while loop to print "Hello Dart" 5 times with the iteration number.

Question 3: Square Pattern
Print a square pattern of stars with 5 rows and 5 columns using nested loops:
*****
*****
*****
*****
*****

Question 4: Right Triangle Pattern
Print a right-angled triangle pattern using stars:
*
**
***
****
*****
Take number of rows as input.

Question 5: Countdown Using While
Take a number as input. Use a while loop to print countdown from that number to 1. Example: If input is 10, print 10, 9, 8, 7, 6, 5, 4, 3, 2, 1.

Question 6: Sum Using While Loop
Use a while loop to calculate sum of first 20 natural numbers. Print the sum.

Question 7: Do-While Input Validator
Use a do-while loop to keep asking user for a positive number. Keep asking until user enters a positive number. Print "Valid input received" when positive number is entered.


* LEVEL 2: INTERMEDIATE (Questions 8-14)

Question 8: Inverted Triangle Pattern
Print an inverted right-angled triangle:
*****
****
***
**
*
Take number of rows as input.

Question 9: Number Pattern
Print this number pattern:
1
12
123
1234
12345
Take number of rows as input.

Question 10: While Loop with List
Create a list of 10 numbers. Use a while loop with an index variable to print all elements. Also calculate and print the sum.

Question 11: Do-While Menu System
Create a simple menu using do-while loop:
1. Display Message
2. Calculate Sum
3. Exit
Keep showing menu until user chooses option 3. Execute appropriate action for each choice.

Question 12: Pyramid Pattern
Print a pyramid pattern of stars:
    *
   ***
  *****
 *******
*********
Take number of rows as input. (Use spaces and stars)

Question 13: While Loop - Find Factorial
Take a number as input. Use a while loop to calculate its factorial. Print the result.

Question 14: Hollow Square Pattern
Print a hollow square pattern:
*****
*   *
*   *
*   *
*****
Take size as input (e.g., 5 for 5x5 square).


* LEVEL 3: ADVANCED (Questions 15-20)

Question 15: Diamond Pattern
Print a diamond pattern of stars:
    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *
Take number of rows as input (for upper half).

Question 16: Number Guessing Game with While Loop
Generate a random number between 1-100 (you can hardcode a number for now). Use a while loop to keep asking user to guess. Give hints "Too high" or "Too low". Count number of attempts. Game ends when user guesses correctly.

Question 17: Password Validator with Do-While
Create a password validation system using do-while loop. Password rules:
- Minimum 8 characters
- Must contain at least one digit
Keep asking user to enter password until valid password is entered. Display which rule is failing if invalid.

Question 18: Floyd's Triangle
Print Floyd's Triangle (numbers in triangular form):
1
2 3
4 5 6
7 8 9 10
11 12 13 14 15
Take number of rows as input. Use nested loops.

Question 19: ATM Simulator with While Loop
Create an ATM system with initial balance of Rs. 10000. Use while loop to show menu:
1. Check Balance
2. Deposit Money
3. Withdraw Money
4. Exit

Rules:
- Withdrawal should check if sufficient balance exists
- Withdrawal charge: Rs. 20 per transaction
- Cannot withdraw more than Rs. 20000 in single transaction
- Minimum balance of Rs. 1000 must be maintained
Keep running until user chooses Exit. Display updated balance after each transaction.

Question 20: Pattern Master - Multiple Patterns
Create a program that shows menu of different patterns using do-while:
1. Right Triangle
2. Inverted Triangle
3. Pyramid
4. Diamond
5. Hollow Square
6. Number Triangle
7. Floyd's Triangle
8. Exit

User selects pattern number, enters size/rows, and program prints that pattern. Keep showing menu until user exits. Use appropriate loops (for/while/nested) for each pattern.

For each pattern:
- Right Triangle: * pattern increasing
- Inverted Triangle: * pattern decreasing
- Pyramid: centered * pattern
- Diamond: combined pyramid and inverted pyramid
- Hollow Square: * border with spaces inside
- Number Triangle: 1, 12, 123, 1234...
- Floyd's Triangle: 1, 2 3, 4 5 6...

Display clean formatted output for each pattern with proper spacing.

 */