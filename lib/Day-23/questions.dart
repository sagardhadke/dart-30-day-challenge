//* Day - 23 Questions
/*

* LEVEL 1: FOUNDATION (Questions 1-7)

Question 1: Number Sign Checker
Take a number as input. Use if-else to check:
- If number > 0, print "Positive number"
- If number < 0, print "Not a positive number"
- If number == 0, print "Zero"
Test with: 10, -5, 0

Question 2: Age Category
Take age as input. Use if-else to determine category:
- If age < 13, print "Child"
- If age >= 13 and age < 20, print "Teenager"
- If age >= 20 and age < 60, print "Adult"
- If age >= 60, print "Senior Citizen"
Test with: 10, 16, 35, 65

Question 3: Even or Odd Checker
Take a number as input. Use if-else with modulus operator (%) to check:
- If number % 2 == 0, print "Even number"
- Else print "Odd number"
Test with: 24, 17, 0, 100

Question 4: Pass or Fail
Take student marks (out of 100) as input. Use if-else:
- If marks >= 40, print "Pass"
- Else print "Fail"
Also display the marks.
Test with: 65, 38, 40

Question 5: Simple Discount Calculator
Take purchase amount as input. Use if-else:
- If amount >= 1000, apply 10% discount
- Else no discount
Calculate and display final amount after discount.
Test with: 1500, 800

Question 6: Voting Eligibility
Take age as input. Use if-else:
- If age >= 18, print "You are eligible to vote"
- Else print "You are not eligible to vote. Wait X more years" (calculate X = 18 - age)
Test with: 20, 16, 18

Question 7: Temperature Alert
Take temperature in Celsius as input. Use if-else:
- If temp > 35, print "Very Hot! Stay hydrated"
- If temp > 25 and temp <= 35, print "Hot weather"
- If temp > 15 and temp <= 25, print "Pleasant weather"
- If temp <= 15, print "Cold weather"
Test with: 40, 30, 20, 10


* LEVEL 2: INTERMEDIATE (Questions 8-14)

Question 8: Grade Calculator
Take percentage as input. Use nested if-else to assign grade:
- If percentage >= 90, grade = "A+"
- Else if percentage >= 80, grade = "A"
- Else if percentage >= 70, grade = "B"
- Else if percentage >= 60, grade = "C"
- Else if percentage >= 50, grade = "D"
- Else grade = "F"
Display percentage and grade.
Test with: 95, 82, 65, 45

Question 9: Basic Calculator
Take two numbers and an operator (+, -, *, /) as input. Use if-else to perform operations:
- If operator is '+', add the numbers
- Else if operator is '-', subtract
- Else if operator is '*', multiply
- Else if operator is '/', divide (check if second number is not 0)
- Else print "Invalid operator"
Display the result in format: "num1 operator num2 = result"
Test with: 10 + 5, 20 - 8, 6 * 7, 15 / 3, 10 / 0

Question 10: Electricity Bill Calculator
Take units consumed as input. Calculate bill using nested if-else:
- If units <= 100: rate = Rs. 2 per unit
- Else if units <= 200: rate = Rs. 3 per unit
- Else if units <= 300: rate = Rs. 4 per unit
- Else: rate = Rs. 5 per unit
Add fixed charge of Rs. 50.
Display: units consumed, rate applied, bill amount.
Test with: 80, 150, 250, 350

Question 11: BMI Calculator with Categories
Take weight (kg) and height (meters) as input. Calculate BMI = weight / (height * height).
Use nested if-else to categorize:
- If BMI < 18.5: "Underweight"
- Else if BMI < 25: "Normal weight"
- Else if BMI < 30: "Overweight"
- Else: "Obese"
Display BMI value and category.
Test with: weight=70, height=1.75

Question 12: Ticket Pricing System
Take age as input. Calculate ticket price using nested if-else:
- If age < 5: Free (Rs. 0)
- Else if age < 12: Child ticket (Rs. 100)
- Else if age < 60: Adult ticket (Rs. 200)
- Else (age >= 60): Senior citizen ticket (Rs. 150)
Take number of tickets as input. Calculate total cost.
Display: age category, ticket price, number of tickets, total cost.
Test with: age=3, age=10, age=35, age=65

Question 13: Leap Year Checker
Take a year as input. Use nested if-else to check if it's a leap year:
- If year is divisible by 400, it's a leap year
- Else if year is divisible by 100, it's not a leap year
- Else if year is divisible by 4, it's a leap year
- Else it's not a leap year
Logic: (year % 400 == 0) || ((year % 4 == 0) && (year % 100 != 0))
Display whether it's a leap year or not.
Test with: 2024, 2023, 2000, 1900

Question 14: Triangle Validator
Take three sides of a triangle (a, b, c) as input. Use nested if-else:
First check if it's a valid triangle: (a + b > c) && (b + c > a) && (a + c > b)
If valid, check triangle type:
- If a == b && b == c: "Equilateral triangle"
- Else if a == b || b == c || a == c: "Isosceles triangle"
- Else: "Scalene triangle"
If not valid, print "Not a valid triangle"
Test with: 5,5,5 | 5,5,7 | 3,4,5 | 1,2,10


* LEVEL 3: ADVANCED (Questions 15-20)

Question 15: Complete Student Grade System
Take student name and marks for 5 subjects as input.
Calculate total and percentage.
Use nested if-else for grade calculation:
First check if any subject < 40 (FAIL condition):
- If yes, grade = "F" and result = "FAIL"
Else check percentage:
- If percentage >= 90 and all subjects >= 80: grade = "A+" (Distinction)
- Else if percentage >= 80: grade = "A" (First Class)
- Else if percentage >= 70: grade = "B" (Second Class)
- Else if percentage >= 60: grade = "C" (Third Class)
- Else: grade = "D" (Pass Class)
Display formatted report card with:
- Student name
- All 5 subject marks
- Total marks (out of 500)
- Percentage
- Grade
- Result (PASS/FAIL)
Test with: 85,90,92,88,95 | 70,75,68,72,80 | 45,35,50,60,55

Question 16: Advanced Calculator with Multiple Operations
Create a calculator that takes two numbers and operator as input.
Use nested if-else to handle:
Basic operations: +, -, *, /
Advanced operations: % (modulus), ** (power - use num1 * num1 for square)
Special cases:
- For division, check if num2 == 0, display error
- For modulus, check if num2 == 0, display error
- For power, if operator is '**', calculate num1 raised to num2 (manual calculation for power of 2 or 3)
Display result in formatted way:
================================
    CALCULATOR RESULT
================================
Number 1:     [num1]
Operator:     [operator]
Number 2:     [num2]
--------------------------------
Result:       [result]
================================
If invalid operator, display error message.
Test with: 10+5, 20-8, 6*7, 15/3, 15/0, 17%5, 2**3

Question 17: Income Tax Calculator
Take annual income as input. Calculate tax using nested if-else:
Tax Slabs:
- Income up to Rs. 2,50,000: No tax (0%)
- Income 2,50,001 to 5,00,000: 5% of amount above 2,50,000
- Income 5,00,001 to 10,00,000: 12,500 + 20% of amount above 5,00,000
- Income above 10,00,000: 1,12,500 + 30% of amount above 10,00,000

If income > 50,00,000, add surcharge of 10% on calculated tax.

Display:
- Annual Income
- Taxable Income
- Tax Amount
- Surcharge (if applicable)
- Total Tax
- Income after Tax
Test with: 200000, 400000, 700000, 1200000, 6000000

Question 18: Loan Eligibility Checker
Take following inputs:
- Age
- Monthly income
- Employment type (Salaried/Self-Employed/Business)
- Credit score
- Existing loan EMI

Use nested if-else to check eligibility:
First check basic eligibility:
- Age must be between 21 and 60
- Monthly income must be >= 25,000
- Credit score must be >= 650

If basic eligibility passed, check detailed eligibility:
For Salaried:
  - If income >= 50,000 and credit score >= 750: "Approved - Premium Rate (8% interest)"
  - Else if income >= 30,000 and credit score >= 700: "Approved - Standard Rate (10% interest)"
  - Else: "Approved - High Rate (12% interest)"

For Self-Employed/Business:
  - Income must be >= 40,000
  - Credit score must be >= 700
  - If both satisfied: "Approved - Business Rate (11% interest)"
  - Else: "Rejected - Does not meet self-employed criteria"

Also check: Existing EMI should not exceed 50% of monthly income
If it does, "Rejected - High existing obligations"

Calculate maximum loan amount = Monthly income * 60 (for salaried) or * 50 (for self-employed)

Display complete eligibility report with all checks and final decision.
Test with different combinations.

Question 19: Restaurant Bill with Dynamic Pricing
Take following inputs:
- Number of items ordered
- For each item: item type (Veg/Non-Veg/Beverage/Dessert) and base price
- Customer type (Regular/Member/VIP)
- Day of week (Weekday/Weekend)
- Dining type (Dine-in/Takeaway/Delivery)

Use nested if-else for pricing:
Base price for items (add this to input price):
- Veg: +0%
- Non-Veg: +20%
- Beverage: +10%
- Dessert: +15%

Customer discount:
- VIP: 25% off on food items (not on beverages)
- Member: 15% off on food items
- Regular: No discount

Day charges:
- Weekend: +10% on total (before customer discount)
- Weekday: No extra charge

Service type charges:
- Dine-in: +10% service charge
- Takeaway: No extra
- Delivery: +Rs. 50 delivery charge

Calculate:
- Item-wise cost
- Subtotal
- Weekend charges (if applicable)
- Customer discount
- Service/delivery charges
- GST (5%)
- Grand Total

Display detailed bill with all breakups.
Test with: 3 items, VIP, Weekend, Delivery

Question 20: Comprehensive Admission Eligibility System
Take following inputs for college admission:
- Student name
- 10th percentage
- 12th percentage
- Entrance exam score (out of 100)
- Category (General/OBC/SC/ST)
- State (Home State/Other State)
- Sports quota (Yes/No)
- Economically Weaker Section - EWS (Yes/No)

Use nested if-else for eligibility:

Minimum eligibility (must satisfy):
- 10th percentage >= 60%
- 12th percentage >= 60%
- Entrance exam score >= 40

If minimum eligibility satisfied, calculate composite score:
Composite = (12th percentage * 0.4) + (Entrance exam score * 0.6)

Category-wise cutoff for composite score:
- General: >= 75
- OBC: >= 70
- SC/ST: >= 65

Special considerations (add to composite score):
- Sports quota: +5 points
- EWS: +3 points
- Home State: +2 points

After calculating final composite score, check admission:
If composite >= (cutoff + special considerations):
  Determine course eligibility:
  - If final composite >= 85: "Eligible for Premium Courses (Engineering/Medical)"
  - Else if final composite >= 75: "Eligible for Regular Courses"
  - Else if final composite >= 65: "Eligible for Basic Courses"
Else:
  "Not Eligible - Score below cutoff"

Also check scholarship eligibility:
- If 12th percentage >= 90 and composite >= 85: "Full Scholarship (100%)"
- Else if 12th percentage >= 80 and composite >= 75: "Partial Scholarship (50%)"
- Else if EWS and composite >= 70: "EWS Scholarship (75%)"
- Else: "No Scholarship"

Display comprehensive admission report:
================================
   ADMISSION ELIGIBILITY REPORT
================================
Student Name:    [name]
Category:        [category]

Academic Records:
  10th %:        [percentage]
  12th %:        [percentage]
  Entrance:      [score]/100

Composite Score:
  Base Score:    [base]
  Bonus Points:  [bonus]
  Final Score:   [final]

Category Cutoff: [cutoff]
Required Score:  [required]

================================
ADMISSION STATUS: [Eligible/Not Eligible]
COURSE TYPE:      [Premium/Regular/Basic]
SCHOLARSHIP:      [Full/Partial/EWS/None]
================================

Test with multiple combinations of inputs.

 */