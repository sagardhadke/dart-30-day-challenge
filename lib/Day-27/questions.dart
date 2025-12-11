//* Day - 27 Questions
/*
* LEVEL 1: FOUNDATION (Questions 1-7)

Question 1: Simple Function
Create a function named greet() that prints "Hello, Welcome to Dart!". Call this function 3 times from main().

Question 2: Function with Return
Create a function named square() that takes a number as parameter and returns its square. Call this function with number 7 and print the result.

Question 3: Addition Function
Create a function named add() that takes two numbers as positional parameters and returns their sum. Call it with different numbers and print results.

Question 4: Function with Named Parameters
Create a function named displayInfo() with named parameters: name and age. Print the information. Call it using named parameters.

Question 5: Function to Check Even/Odd
Create a function named checkEvenOdd() that takes a number as parameter and returns "Even" or "Odd" as string. Test with multiple numbers.

Question 6: Anonymous Function Basic
Create a list of 5 numbers. Use forEach with an anonymous function to print each number multiplied by 2.

Question 7: Function with Default Parameter
Create a function named greetUser() with one required positional parameter (name) and one optional positional parameter (greeting with default value "Hello"). Print greeting message.


* LEVEL 2: INTERMEDIATE (Questions 8-14)

Question 8: Area Calculator Functions
Create three functions:
- rectangleArea(length, width) - returns area
- circleArea(radius) - returns area (use 3.14159)
- triangleArea(base, height) - returns area
Take inputs and call appropriate function to calculate and display area.

Question 9: Named Parameters with Required
Create a function calculateBMI() with named parameters: required double weight, required double height. Calculate and return BMI. Display BMI with category (Underweight/Normal/Overweight/Obese).

Question 10: List Operations with Anonymous Functions
Create a list of 10 numbers. Use anonymous functions with:
- forEach to print all numbers
- where to filter numbers greater than 50
- map to create new list with each number doubled
Print all results.

Question 11: Grade Calculator Function
Create a function calculateGrade() that takes marks as positional parameter and returns grade (A+/A/B/C/D/F). Use if-else inside function. Test with multiple marks values.

Question 12: Function with Mixed Parameters
Create a function calculateTotal() with:
- Positional parameter: price
- Named parameter with default: quantity = 1
- Named parameter with default: discount = 0
Calculate and return final amount after discount. Test with different combinations.

Question 13: Anonymous Function with Map
Create a map of 5 students with marks. Use forEach with anonymous function to print each student's name, marks, and grade (calculate grade inside anonymous function).

Question 14: Factorial Function
Create a function factorial() that takes a number and returns its factorial using a loop. Test with numbers 5, 7, 10.


* LEVEL 3: ADVANCED (Questions 15-20)

Question 15: Employee Salary Calculator with Named Parameters
Create a function calculateSalary() with named parameters:
- required double basicSalary
- double hra = 0.2 (20% default)
- double da = 0.15 (15% default)
- double bonus = 0
- required double pf (12% as 0.12)

Calculate:
- HRA = basicSalary * hra
- DA = basicSalary * da
- Gross = basicSalary + HRA + DA + bonus
- PF deduction = basicSalary * pf
- Net Salary = Gross - PF

Return net salary. Create another function displaySalarySlip() that takes all parameters and displays formatted salary slip. Test with different employees.

Question 16: Shopping Cart Functions
Create multiple functions:
- addItem() - takes item name, price, quantity as named parameters, returns item total
- applyDiscount() - takes amount and discount percentage as positional parameters, returns discounted amount
- calculateGST() - takes amount and GST rate (default 5%) as parameters, returns GST amount
- generateBill() - takes list of items (use map for each item), calculates subtotal, applies discount if subtotal > 1000, adds GST, returns final amount

Take 3 items as input, use all functions to generate complete bill with breakdown.

Question 17: Anonymous Functions in List Processing
Create a list of 15 numbers (mix of positive and negative). Use anonymous functions to:
- Filter and create new list with only positive numbers
- Filter and create new list with only negative numbers
- Map to create new list with absolute values of all numbers
- Use forEach to print numbers in format: "Number: X, Square: Y"
- Use where and map together to get squares of only even numbers

Display all results with proper labels.

Question 18: Student Management System with Functions
Create functions:
- addStudent() - takes name and list of 5 marks as parameters (use positional for name, named for marks list), returns map with student data
- calculatePercentage() - takes marks list, returns percentage
- assignGrade() - takes percentage, returns grade
- checkPass() - takes marks list, returns true if all subjects >= 40, else false
- displayReport() - takes student map, displays formatted report card

In main:
- Take data for 3 students
- Use functions to process each student
- Store all students in a list
- Use anonymous function with forEach to display all reports
- Find and display class topper using anonymous functions

Question 19: Calculator with Function Types
Create a calculator using different function approaches:

Regular functions:
- add(a, b)
- subtract(a, b)
- multiply(a, b)
- divide(a, b)

Function with named parameters:
- calculate({required double num1, required double num2, required String operation})
This function should call appropriate operation function based on operation parameter.

Anonymous function:
- Create a map where keys are operators (+, -, *, /) and values are anonymous functions that perform operations
- Example: {'+': (a, b) => a + b, '-': (a, b) => a - b, ...}

Create a menu system:
1. Use regular functions
2. Use calculate() with named parameters
3. Use map with anonymous functions
4. Exit

Take user choice, two numbers, and operator. Perform calculation using selected method. Use while loop to keep calculator running until exit.

Question 20: Banking System with Comprehensive Functions
Create a complete banking system with following functions:

Account Management:
- createAccount({required String name, required String accountNumber, double initialBalance = 0}) - returns account map
- displayAccount(Map account) - displays formatted account details

Transaction Functions:
- deposit(Map account, double amount) - adds amount to balance, returns new balance
- withdraw(Map account, double amount) - deducts amount with Rs. 20 charge, checks minimum balance Rs. 5000, returns new balance or error message
- transfer(Map fromAccount, Map toAccount, double amount) - transfers money between accounts with Rs. 50 charge

Utility Functions:
- calculateInterest({required double balance, double rate = 4.5}) - calculates annual interest
- checkBalance(Map account) - returns current balance
- generateStatement(Map account, List transactions) - displays formatted statement

Transaction History:
- Use list to store all transactions
- Each transaction is a map: {type, amount, balance, timestamp}
- Use anonymous function with forEach to display transaction history

Main Program:
- Create 2 accounts
- Show menu with all operations
- Use switch case for menu
- Perform at least 10 different transactions
- Use functions appropriately for each operation
- Display final account details and transaction history for both accounts
- Calculate and display total interest earned on both accounts

Use named parameters where appropriate, positional parameters for simple functions, and anonymous functions for list operations. Display all outputs in formatted manner.

 */
