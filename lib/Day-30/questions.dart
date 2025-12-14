//* Day - 30 Questions
/*

* LEVEL 1: FOUNDATION (Questions 1-7)

Question 1: Personal Information System
Take user input for: name, age, city, phone. Store in a map. Use if-else to check if age >= 18 (display "Adult" or "Minor"). Use escape sequences to display formatted profile card. Calculate birth year (2025 - age). Display everything in professional format.

Question 2: Simple Shopping List Manager
Create a list of 5 items. Use a for loop to display all items with index. Take item name to search as input. Use while loop with break to find and display if item exists. Add 2 new items using function addItem(). Display updated list with count.

Question 3: Number Pattern and Calculator
Use nested for loops to print pattern:
1
22
333
4444
55555
Take number of rows as input. Then create a function calculate() that takes two numbers and operator. Use switch case to perform operation and return result.

Question 4: Grade System with Functions
Create a function calculateGrade() that takes marks as parameter. Use if-else to return grade (A+/A/B/C/D/F). Take 3 students' marks as input. Store in list. Use forEach with anonymous function to display each mark with grade.

Question 5: Temperature Converter with Validation
Create function convertTemperature() with named parameters: temp, fromUnit, toUnit. Use if-else to convert between Celsius and Fahrenheit. Use do-while loop to keep asking input until valid unit (C/F) is entered. Display result with escape sequences.

Question 6: List Operations Combined
Create a list of 10 numbers. Create functions: findMax(), findMin(), calculateSum(), calculateAverage(). Use for loop inside functions. Display all results. Use continue to skip negative numbers while processing.

Question 7: Student Attendance Tracker
Create a map of 5 students with attendance percentage. Use for loop to iterate through map. Use if-else to categorize: >=90 "Excellent", >=75 "Good", >=60 "Average", else "Poor". Count students in each category. Display formatted report.


* LEVEL 2: INTERMEDIATE (Questions 8-14)

Question 8: Bank Account Manager
Create functions:
- createAccount(name, initialBalance) - returns account map with id, name, balance
- deposit(account, amount) - adds to balance
- withdraw(account, amount) - deducts with Rs.20 charge, checks minimum balance Rs.5000

Use switch case menu:
1. Create Account
2. Deposit
3. Withdraw
4. Check Balance
5. Exit

Use while loop for menu. Store multiple accounts in list. Display formatted output with escape sequences.

Question 9: Inventory Management with CRUD
Create product inventory using list of maps. Each product has: id, name, quantity, price.
Functions:
- addProduct() - adds new product
- updateProduct() - updates quantity or price
- deleteProduct() - removes product
- displayInventory() - shows all products in table format using \t

Use for loop to display. Use if-else for validation. Implement complete menu with switch case. Track total inventory value.

Question 10: Student Report Card Generator
Take 3 students data: name and marks for 5 subjects.
Create functions:
- calculateTotal(marksList) - uses for loop
- calculatePercentage(total) - returns percentage
- assignGrade(percentage) - uses nested if-else
- checkPass(marksList) - uses for loop, returns true if all >=40

Store students in list of maps. Use nested for loops to process all students. Display complete class report with:
- Individual report cards
- Class average
- Topper details
- Pass percentage

Question 11: Recursive Fibonacci with Menu
Create recursive function fibonacci(n). Create menu:
1. Single Fibonacci number
2. Fibonacci series up to n terms
3. Sum of first n Fibonacci numbers
4. Exit

Use switch case. For series, use for loop calling fibonacci() function. Use while loop for menu. Display results formatted with escape sequences.

Question 12: Pattern Printing System
Create functions for patterns:
- rightTriangle(rows) - uses nested for loops
- pyramid(rows) - uses for loops with spaces
- diamond(rows) - uses for loops
- numberPattern(rows) - prints number triangle

Menu with switch case to select pattern. Use do-while to keep showing menu. Take pattern size as input. Display selected pattern.

Question 13: Login System with Attempts
Create login system with:
- Username and password stored in map (3 users)
- Maximum 3 attempts using for loop with break
- Use if-else to validate credentials
- Use continue to skip empty inputs
- Lock account after 3 failed attempts
- Display formatted messages with escape sequences

After successful login, show user menu with profile options using switch case.

Question 14: Task Priority Manager
Create task list with maps containing: id, title, priority (High/Medium/Low), status (Pending/Complete).
Functions:
- addTask() - with named parameters
- updatePriority() - changes priority
- markComplete() - changes status
- filterByPriority(priority) - uses for loop with if condition
- displayTasks() - uses forEach with anonymous function

Implement menu system. Use break and continue appropriately. Sort tasks: High first using nested if-else in loop.


* LEVEL 3: ADVANCED (Questions 15-17)

Question 15: E-Commerce Shopping System
Create complete shopping system:

Products (stored in map): id, name, category, price, stock
Cart (list of maps): productId, quantity

Functions:
- displayProducts() - shows all with for loop and escape sequences
- addToCart(productId, quantity) - validates stock, adds to cart
- removeFromCart(productId) - removes from cart
- updateCartQuantity(productId, newQuantity) - updates quantity
- calculateBill() - uses for loops, applies discounts with if-else:
  * Cart total > 5000: 20% discount
  * Cart total > 2000: 10% discount
  * Weekend (take input): additional 5% discount
- checkout() - generates bill with GST (5%), displays itemized bill

Menu system:
1. View Products
2. Add to Cart
3. View Cart
4. Update Cart
5. Remove from Cart
6. Checkout
7. Exit

Use switch case, while loop for menu. Validate all inputs with if-else. Display professional bill format with \n and \t.

Question 16: Student Management System with Recursion
Create comprehensive student system:

Student structure: id, name, marks (list of 5 subjects), attendance

Functions:
- addStudent() - with validation
- updateStudent() - update marks or attendance
- deleteStudent() - with confirmation
- displayStudent() - formatted display
- searchStudent(name) - recursive function to search in list
- calculateClassStats() - uses multiple loops

Recursive functions:
- searchRecursive(list, name, index) - searches student
- findMaxMarks(marksList, index) - finds highest marks recursively
- calculateGradeRecursive(marks) - uses recursion for grade calculation

Menu with all CRUD operations. Use nested if-else for validations. Display statistics:
- Total students
- Class average
- Grade distribution (A+, A, B, C, D, F counts)
- Attendance report
Use for loops and anonymous functions where appropriate.

Question 17: Banking System with Transaction History
Create advanced banking system:

Account structure: accountNumber, name, balance, transactionHistory (list)
Transaction structure: type (Deposit/Withdrawal/Transfer), amount, date, balance after transaction

Functions:
- createAccount() - with initial deposit >=1000
- deposit(account, amount) - adds to balance, records transaction
- withdraw(account, amount) - with validations:
  * Amount > 0
  * Balance sufficient
  * Minimum balance Rs.5000
  * Withdrawal charge Rs.20
- transfer(fromAccount, toAccount, amount) - transfers with Rs.50 charge
- displayStatement(account) - shows last 10 transactions using for loop
- calculateInterest(account) - 4% annual, uses if-else for special rates:
  * Balance > 100000: 5%
  * Balance > 50000: 4.5%
- searchTransaction(account, type) - uses while loop with continue to find specific transactions

Menu:
1. Create Account
2. Deposit
3. Withdraw
4. Transfer
5. Check Balance
6. View Statement
7. Calculate Interest
8. Search Transactions
9. Account Summary
10. Exit

Store multiple accounts in list. Use switch case for menu. Validate using nested if-else. Display formatted outputs with escape sequences.
*/
