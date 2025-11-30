//* Day - 16 Questions
/*

Question 1: Personal Profile Builder
Take user's name, age, city, and phone number as input using stdout.write() prompts. Store all data in a map. Calculate birth year (2025 - age). Check if user is adult (age >= 18) using ternary operator. Use print() to display a formatted profile card:
================================
   PROFILE CARD
================================
Name: [name]
Age: [age] years
Birth Year: [year]
City: [city]
Phone: [phone]
Status: [Adult/Minor]
================================

Question 2: Weekly Budget Tracker
Create a list to store expenses for 7 days. Take each day's expense as input using stdout.write() prompt "Day [X] expense: Rs.". Calculate: total weekly expense, average daily expense, highest expense day, lowest expense day. Check if total > 5000 (over budget). Use print() to create formatted weekly report with all statistics. Use logical operators to determine if user should "REDUCE SPENDING" (total > 5000 && average > 700).

Question 3: Mini Restaurant Billing System
Create a menu map with 6 items and prices. Display menu using print() with proper formatting. Use stdout.write() to ask "How many items to order: ". For each item, take item name and quantity as input. Calculate cost for each item. Find subtotal. Apply discount: subtotal >= 1000 ? 15% : subtotal >= 500 ? 10% : 0%. Add 5% GST. Use print() to generate formatted bill with item-wise details, subtotal, discount, GST, and grand total. Make it look professional.

Question 4: Student Grade Calculator with Input
Take number of students as input. For each student, take name and marks for 5 subjects as input using stdout.write() prompts. Store in appropriate data structure (map with nested lists). For each student calculate: total, percentage, grade using nested ternary (>=90: A+, >=80: A, >=70: B, >=60: C, else: D). Check if passed (all subjects >= 40). Calculate class average. Use print() to create formatted class report showing each student's details and class statistics.

Question 5: Shopping Cart Manager
Create products map: {'Laptop': 45000, 'Mouse': 500, 'Keyboard': 1500, 'Monitor': 12000, 'Headphones': 2000}. Use stdout.write() to ask "Enter number of different items to buy: ". For each item, take product name and quantity as input. Validate if product exists in map using .containsKey(). Calculate cart total. Check membership using input (Premium/Regular). If Premium, apply 20% discount. If Regular && total > 10000, apply 10% discount. Add shipping: total >= 5000 ? 0 : 200. Use print() to display formatted shopping cart with all items, prices, quantities, discounts, shipping, and final amount.

Question 6: Loan Eligibility Calculator
Take inputs: name, age, monthly salary, employment type (Salaried/Business), years of employment, existing loan EMI, credit score. Store in map. Check eligibility using complex logical conditions: (age >= 21 && age <= 60) && (salary >= 25000) && (employment_years >= 2) && (credit_score >= 700) && ((salary - existing_EMI) >= 15000). If eligible, calculate loan amount: (salary × 50) if Salaried, (salary × 40) if Business. Calculate EMI for 5 years. Use print() to create formatted eligibility report with all details and decision. Use ternary operators where appropriate.

Question 7: Fitness Challenge Tracker
Take number of participants as input. For each participant, take name and daily steps for 7 days as input. Store in map with lists. For each participant calculate: weekly total steps, daily average, how many days met target (>= 10000 steps). Use logical operators to determine: Champion (total >= 80000 && met target >= 6 days), Good Performer (total >= 60000 || met target >= 5 days), Needs Improvement (otherwise). Calculate and display leaderboard with rankings. Use print() for formatted output showing participant-wise analysis and overall statistics.

Question 8: Multi-Category Exam System
Take student name as input. Take marks for 3 categories as input: Theory (out of 100), Practical (out of 50), Assignment (out of 50). Convert all to percentage. Calculate final percentage: (theory × 50%) + (practical × 30%) + (assignment × 20%). Check passing criteria: (theory >= 40 && practical >= 40 && assignment >= 40 && final_percentage >= 50). Calculate grade using nested ternary. Use stdout.write() for all input prompts. Use print() to create comprehensive marksheet with:
Individual component marks and percentages
Final percentage calculation breakdown
Grade and Pass/Fail status
Remarks based on performance
Format it professionally.

Question 9: Employee Salary Slip with Detailed Components
Take employee details as input: name, employee ID, basic salary, years of service, department (IT/Sales/HR), performance rating (A/B/C). Calculate components:
HRA: 25% of basic
DA: 15% of basic
Travel Allowance: IT: Rs.3000, Sales: Rs.5000, HR: Rs.2000
Performance Bonus: A: 30% of basic, B: 20%, C: 10%
Experience Bonus: years > 5 ? Rs.10000 : years > 3 ? Rs.5000 : 0
Gross Salary: basic + all allowances
Deductions: PF (12% of basic), Professional Tax (Rs.200), Tax (gross > 50000 ? 10% : 5%)
Net Salary: Gross - Deductions
Use logical and ternary operators. Use print() to create professional salary slip with all components clearly shown, properly formatted and aligned.

Question 10: Complete Inventory Management System
Create inventory map with 10 products containing: name, current stock, minimum stock, price. Display inventory using print() in tabular format. Take operation choice from user: 1) Add Stock, 2) Remove Stock, 3) Sell Product, 4) Generate Report. Based on choice:
Add Stock: Take product name and quantity, update stock
Remove Stock: Take product name and quantity, validate and update
Sell Product: Take product name and quantity, validate stock, calculate sale amount, update stock
Generate Report: Show all products, categorize as CRITICAL (stock < 50% minimum), LOW (stock < minimum but >= 50%), OK (stock >= minimum)
After each operation, use print() to show updated status. Use logical operators for stock validations. Use ternary for categorization. Create professional looking system with proper menus and formatted output throughout.

 */
