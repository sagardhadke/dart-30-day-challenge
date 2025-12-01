//* Day - 17 Questions
/*

* LEVEL 1: EASY (Questions 1-3)

Question 1: Simple Expense Manager
Take daily expenses for 5 days as input using stdout.write(). Store in a list. Calculate total and average expense. Check if any day's expense > 500 using comparison operators. Use print() to display formatted summary with total, average, and highest expense day.

Question 2: Movie Rating System
Create a map of 5 movies with their ratings (1-10). Display all movies using print(). Take a movie name as input using stdout.write(). Check if movie exists using .containsKey(). If exists, use ternary operator to print: rating >= 8 ? "Highly Recommended" : rating >= 6 ? "Good" : "Average". Print result with print().

Question 3: Age Category Checker
Take user's name and age as input. Use nested ternary operators to categorize: age < 5 ? "Toddler" : age < 13 ? "Child" : age < 20 ? "Teenager" : age < 60 ? "Adult" : "Senior". Calculate birth year (2025 - age). Use print() to display formatted output:
Name: [name]
Age: [age] years
Category: [category]
Birth Year: [year]

* LEVEL 2: INTERMEDIATE (Questions 4-7)

Question 4: Subject Marks Analyzer
Take marks for 5 subjects as input. Store in a list. Calculate total and percentage. Count how many subjects have marks >= 80 (distinction), >= 60 (first class), >= 40 (pass). Use logical operators to check: overall pass (all subjects >= 40) && (percentage >= 50). Use print() to create formatted marksheet with all statistics.

Question 5: Product Discount Calculator
Create a map with 6 products and prices. Take product name and quantity as input using stdout.write(). Validate if product exists. Calculate cost (price × quantity). Apply discount logic using ternary: cost >= 5000 ? 20% : cost >= 3000 ? 15% : cost >= 1000 ? 10% : 0%. Add 5% GST on final price. Use print() to show itemized bill with product, quantity, original cost, discount, GST, and final amount.

Question 6: Employee Attendance Tracker
Take number of employees (max 5) as input. For each employee, take name and days present (out of 30) as input. Store in a map. For each employee calculate attendance percentage. Use logical operators to determine bonus eligibility: (attendance >= 95) && (days_present >= 28). Use ternary for performance rating: >= 95 ? "Excellent" : >= 85 ? "Good" : >= 75 ? "Average" : "Poor". Use print() to display formatted attendance report for all employees with bonus status.

Question 7: Multi-Item Shopping Cart
Take number of items as input. For each item, take name, price, and quantity as input. Store appropriately (use list of maps or separate lists). Calculate cost for each item. Find subtotal of all items. Check if subtotal > 2000 using comparison operator. If yes, apply 15% discount, else 5%. Calculate tax (8% on discounted total). Use print() to create professional shopping bill:
================================
       SHOPPING BILL
================================
[Item details line by line]
--------------------------------
Subtotal:    Rs. [amount]
Discount:    Rs. [amount]
After Disc:  Rs. [amount]
Tax (8%):    Rs. [amount]
================================
GRAND TOTAL: Rs. [amount]
================================

* LEVEL 3: ADVANCED (Questions 8-10)

Question 8: Student Performance Dashboard
Take 4 students' data as input. For each student take: name, roll number, and marks for 4 subjects. Store in a map where each student's data is a nested map: {'name': String, 'roll': int, 'marks': List}. For each student calculate:

Total marks and percentage
Grade using: (percentage >= 90 && all subjects >= 75) ? "A+" : (percentage >= 80 && all subjects >= 65) ? "A" : percentage >= 70 ? "B" : percentage >= 60 ? "C" : "D"
Pass status: all subjects >= 40 ? "PASS" : "FAIL"

Calculate class statistics: average percentage, topper details, count by grade (how many A+, A, B, C, D), pass percentage. Use print() to create comprehensive dashboard showing individual student reports and class analytics. Format professionally with proper sections.

Question 9: Banking Transaction System
Take account holder name and initial balance as input. Create a transaction history list (empty initially). Show menu using print():
1. Deposit
2. Withdraw
3. Check Balance
4. Transaction History
5. Exit
Take choice using stdout.write(). Implement operations:

Deposit: Take amount, validate (> 0), add to balance, add to history with type "Deposit"
Withdraw: Take amount, validate (> 0 && <= balance), subtract from balance, deduct Rs. 20 charge, add to history with type "Withdrawal"
Check Balance: Display current balance
Transaction History: Show last 5 transactions with type and amount
Exit: Show final balance and exit

After each transaction, check and display using logical operators: balance < 1000 ? "Low Balance Alert!" : balance >= 50000 ? "High Value Account" : "Regular Account". Use print() for all outputs with proper formatting. Handle at least 5 operations before exit.

Question 10: Complete Inventory & Sales System
Create inventory map with 8 products containing nested maps: {'name': String, 'stock': int, 'price': double, 'min_stock': int}. Display main menu:
1. View Inventory
2. Add Stock
3. Sell Product
4. Stock Alert Report
5. Sales Report
6. Exit
Implement each option:

View Inventory: Display all products in table format using print()
Add Stock: Take product name and quantity, update stock
Sell Product: Take product name and quantity as input. Validate: product exists && quantity <= available stock. Calculate sale amount (price × quantity). Apply discount using ternary: quantity >= 10 ? 15% : quantity >= 5 ? 10% : 0%. Update stock. Store sale in sales list.
Stock Alert Report: Use logical operators to categorize products: stock < (min_stock × 0.5) ? "CRITICAL" : stock < min_stock ? "LOW" : "OK". Display categorized lists.
Sales Report: Show all sales transactions, calculate total revenue, find bestselling product (most quantity sold)

Use stdout.write() for all inputs. Use print() for all menus and reports with professional formatting. Handle complete workflow with at least 8 operations total.

 */