//* Day - 28 Questions
/*

* LEVEL 1: FOUNDATION (Questions 1-7)

Question 1: Simple Recursion - Countdown
Create a recursive function countdown() that takes a number n and prints numbers from n to 1. Example: countdown(5) prints 5, 4, 3, 2, 1.

Question 2: Factorial Using Recursion
Create a recursive function factorial() that calculates factorial of a number. Test with 5, 6, 7.

Question 3: Sum of N Numbers
Create a recursive function sumOfN() that calculates sum of first n natural numbers. Example: sumOfN(5) = 1+2+3+4+5 = 15.

Question 4: Power Function
Create a recursive function power(base, exponent) that calculates base raised to exponent. Example: power(2, 3) = 8.

Question 5: Print N to 1
Create a recursive function printReverse() that takes n and prints n, n-1, n-2, ..., 1. Test with n = 10.

Question 6: Fibonacci Number
Create a recursive function fibonacci() that returns the nth Fibonacci number. Test with n = 7 (should return 13).

Question 7: Count Digits
Create a recursive function countDigits() that counts number of digits in a number. Example: countDigits(12345) = 5.


* LEVEL 2: INTERMEDIATE (Questions 8-14)

Question 8: Sum of Digits
Create a recursive function sumOfDigits() that calculates sum of all digits in a number. Example: sumOfDigits(1234) = 1+2+3+4 = 10.

Question 9: GCD Using Recursion
Create a recursive function gcd() that finds Greatest Common Divisor of two numbers using Euclidean algorithm. Test with (48, 18), (100, 50).

Question 10: Reverse a Number
Create a recursive function reverseNumber() that reverses a number. Example: reverseNumber(12345) = 54321. (Hint: use helper function with extra parameter)

Question 11: Array Sum Recursion
Create a recursive function sumArray() that takes a list and index, returns sum of all elements from that index to end. Example: sumArray([1,2,3,4,5], 0) = 15.

Question 12: Tail Recursion - Factorial
Create a tail recursive function factorialTail() with accumulator parameter. Compare with normal recursion. Example: factorialTail(5, 1) where 1 is accumulator.

Question 13: String Length Recursion
Create a recursive function stringLength() that calculates length of a string without using .length property. Example: stringLength("Hello") = 5.

Question 14: Multiple Recursion - Fibonacci
Create a fibonacci function that uses multiple recursion (calls itself twice). Count how many times function is called for fibonacci(6). Add a counter variable.


* LEVEL 3: ADVANCED (Questions 15-20)

Question 15: Tower of Hanoi
Create a recursive function towerOfHanoi() that solves Tower of Hanoi puzzle. Function takes number of disks, source rod, destination rod, and auxiliary rod as parameters. Print each move. Test with 3 disks.

Question 16: Binary Search Recursion
Create a recursive function binarySearch() that searches for an element in a sorted list. Function takes list, element to search, start index, and end index. Return index if found, -1 if not found. Test with sorted list [2,5,8,12,16,23,38,45,50,67] searching for 23 and 100.

Question 17: Tail Recursion vs Normal Recursion Comparison
Create two versions of sum function:
- sumNormal(n) - normal recursion
- sumTail(n, accumulator) - tail recursion

For both functions:
- Calculate sum of numbers 1 to n
- Add counter to track number of recursive calls
- Compare performance and call count for n = 100, 500, 1000
Display results showing difference between normal and tail recursion.

Question 18: Recursive List Operations
Create recursive functions for list operations:
- findMax(list, index) - finds maximum element in list
- findMin(list, index) - finds minimum element in list
- countOccurrences(list, element, index) - counts how many times element appears
- reverseList(list, start, end) - reverses list recursively

Test all functions with list: [45, 23, 67, 12, 89, 23, 56, 23, 90, 12]

Question 19: Multiple Recursion - Combination Calculator
Create a recursive function combination(n, r) that calculates nCr (combination) using formula: C(n,r) = C(n-1,r-1) + C(n-1,r)
Base cases: C(n,0) = 1, C(n,n) = 1

This uses multiple recursion (two recursive calls).
Test with: C(5,2), C(6,3), C(10,4)
Also count total recursive calls made.

Question 20: Comprehensive Recursion Problem - Expression Evaluator
Create a recursive calculator that evaluates mathematical expressions:

Functions to create:
- evaluateExpression(expression) - main recursive function
- parseNumber(string, index) - extracts number from string
- calculate(num1, operator, num2) - performs operation

Support operations: +, -, *, /

Expression format: "5+3*2-4/2" (without spaces)

Steps:
1. Parse expression recursively
2. Follow operator precedence (* and / before + and -)
3. Use recursion to break down expression
4. Calculate result

Also create these recursive helper functions:
- findOperator(expression, operators) - finds operator with lowest precedence
- splitExpression(expression, operatorIndex) - splits at operator
- evaluateLeft(leftPart) - recursively evaluates left part
- evaluateRight(rightPart) - recursively evaluates right part

Test cases:
- "5+3" = 8
- "10-4" = 6
- "3*4" = 12
- "15/3" = 5
- "5+3*2" = 11 (not 16, because * has higher precedence)
- "10-4/2" = 8 (not 3)
- "2*3+4*5" = 26

Display step-by-step evaluation showing recursive calls and intermediate results.

Note: For simplification, you can assume:
- All numbers are positive integers
- No spaces in expression
- Valid expressions only (no error handling needed for this exercise)
- Can use string operations and helper variables

Bonus: Track and display:
- Total recursive calls made
- Depth of recursion
- Evaluation tree structure

 */
