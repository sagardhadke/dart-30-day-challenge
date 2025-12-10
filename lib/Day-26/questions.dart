//* Day - 26 Questions
/*

* LEVEL 1: FOUNDATION (Questions 1-7)

Question 1: Break Statement Basic
Use a for loop to print numbers from 1 to 20. Use break to stop the loop when number reaches 10.

Question 2: Continue Statement Basic
Use a for loop to print numbers from 1 to 15. Use continue to skip printing numbers 5, 10, and 15.

Question 3: Simple Switch Case
Take a number (1-7) as input representing day of week. Use switch case to print day name:
1 = Monday, 2 = Tuesday, 3 = Wednesday, 4 = Thursday, 5 = Friday, 6 = Saturday, 7 = Sunday
Add default case for invalid input.

Question 4: Break in While Loop
Use a while loop to keep taking numbers as input. Break the loop when user enters 0. Print sum of all numbers entered (excluding 0).

Question 5: Calculator Using Switch
Take two numbers and an operator (+, -, *, /) as input. Use switch case to perform the operation and print result. Add default case for invalid operator.

Question 6: Skip Even Numbers with Continue
Use a for loop from 1 to 20. Use continue to skip even numbers. Print only odd numbers.

Question 7: Month Name Using Switch
Take month number (1-12) as input. Use switch case to print month name. Add default case for invalid month number.


* LEVEL 2: INTERMEDIATE (Questions 8-14)

Question 8: Find First Multiple
Use a for loop to find the first number between 1 and 100 that is divisible by both 7 and 13. Use break when found. Print the number.

Question 9: Grade System with Switch
Take marks (0-100) as input. Use switch case with ranges:
- 90-100: A+
- 80-89: A
- 70-79: B
- 60-69: C
- 50-59: D
- Below 50: F
(Hint: Use marks ~/10 in switch to create ranges)
Print the grade.

Question 10: Continue with Condition
Use a for loop to iterate through numbers 1 to 30. Use continue to skip:
- Numbers divisible by 3
- Numbers divisible by 5
Print remaining numbers.

Question 11: Search and Break
Create a list of 10 numbers. Take a number to search as input. Use a for loop with break to find if number exists in list. Print "Found at index X" or "Not found".

Question 12: Menu System with Switch
Create a menu system using switch case:
1. Add two numbers
2. Find even/odd
3. Check positive/negative
4. Exit
Take choice and execute appropriate operation. Use break after each case. Use while loop to keep showing menu until exit.

Question 13: Password Attempts with Break
Give user 3 attempts to enter correct password (hardcode password as "dart123"). Use a for loop with break. If correct password entered, break and show success. After 3 wrong attempts, show "Account locked".

Question 14: Prime Number Skip with Continue
Use a for loop from 1 to 50. Use continue to skip prime numbers. Print only non-prime numbers (composite numbers).


* LEVEL 3: ADVANCED (Questions 15-20)

Question 15: Number Guessing Game
Create a number guessing game:
- System selects a random number between 1-50 (you can hardcode it as 25 for testing)
- User gets 7 attempts to guess
- Give hints: "Too high" or "Too low"
- Use break when correct number is guessed
- Use continue to skip invalid inputs (negative numbers or numbers > 50)
- Display number of attempts taken
- If all 7 attempts used, reveal the number

Question 16: Advanced Calculator with Switch
Create a comprehensive calculator using switch case:
Cases:
1. Addition
2. Subtraction
3. Multiplication
4. Division
5. Modulus
6. Power (num1 ^ num2)
7. Square Root (of first number)
8. Exit

Features:
- Use while loop to keep calculator running
- Take two numbers as input
- Use switch for operation selection
- Handle division by zero
- Use break after each case
- Use continue if invalid numbers entered
Display result in formatted way.

Question 17: ATM with Break and Continue
Create an ATM system with initial balance Rs. 50000:
Menu:
1. Check Balance
2. Withdraw Money
3. Deposit Money
4. Change PIN
5. Exit

Rules:
- Use switch case for menu
- Max 3 wrong PIN attempts, then break and exit
- Use continue to skip invalid withdrawal amounts (negative, zero, more than balance)
- Cannot withdraw more than Rs. 25000 in single transaction
- Minimum balance Rs. 5000 must remain
- Add Rs. 20 charge per withdrawal
- Use break to exit when option 5 selected
Track and display transaction count.

Question 18: Student Grade Analysis with Break/Continue
Create a student marks entry system:
- Take number of students as input
- For each student, take marks for 5 subjects
- Use continue to skip and re-enter if any mark is invalid (negative or > 100)
- Calculate total and percentage
- Use switch case for grade assignment (based on percentage/10)
- Stop taking input if "STOP" is entered as student name (use break)
- Display complete report of all students entered

Grade assignment using switch:
case 10, 9: A+
case 8: A
case 7: B
case 6: C
case 5: D
default: F

Question 19: Nested Loop with Break and Continue
Create a pattern printing system where:
- Outer loop runs from 1 to 10
- Inner loop runs from 1 to outer loop variable
- Use continue in outer loop to skip rows 3 and 7
- Use break in inner loop when inner counter equals 5 (max 5 stars per row)
Print star pattern with these conditions.
Also create alternate version with numbers instead of stars.

Question 20: Game Menu System with Switch and Loop Control
Create a game menu with multiple mini-games using switch case:

Main Menu:
1. Number Guessing Game
2. Even/Odd Game
3. Multiplication Quiz
4. Prime Number Checker
5. Exit

Game 1 - Number Guessing:
- Guess number between 1-100
- 5 attempts
- Use break when guessed correctly
- Use continue for invalid inputs

Game 2 - Even/Odd Game:
- System shows a number
- User guesses if it's even or odd
- 10 rounds
- Track score
- Use continue if invalid input (not E or O)

Game 3 - Multiplication Quiz:
- Ask 5 random multiplication questions (hardcode questions)
- Use break if user types "quit"
- Use continue if invalid answer format
- Show score at end

Game 4 - Prime Checker:
- Take a number
- Check if prime
- Use break to exit check loop when divisor found
- Ask if user wants to check another number

Main System:
- Use while loop to keep showing main menu
- Use switch case for menu selection
- Use break to exit main loop when option 5 selected
- Track total games played
- Display game statistics when exiting

Display formatted output with game instructions, scores, and results.

 */
