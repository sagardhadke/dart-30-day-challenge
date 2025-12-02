//* Day - 18 Questions
/*

* LEVEL 1: FOUNDATION (Questions 1-5)

Question 1: Complete Arithmetic Operations
Take two numbers as input using stdout.write(). Perform all arithmetic operations: addition, subtraction, multiplication, division, modulus, and integer division. Store each result in separate variables. Use print() to display all results in a formatted manner with proper labels.

Question 2: Comparison Operators Practice
Take three numbers as input. Compare them using all comparison operators (==, !=, >, <, >=, <=). Print at least 8 different comparisons with meaningful messages. For example: "Is first number equal to second?", "Is second greater than third?", etc.

Question 3: Logical Decision Maker
Take age and hasLicense (true/false as string, then convert to bool) as input. Check eligibility to drive using: age >= 18 && hasLicense. Also check: age >= 18 || hasLicense (can apply for license). Use NOT operator to check: !hasLicense (needs license). Print all three conditions with results.

Question 4: Ternary Operator Basics
Take marks as input. Use simple ternary to assign result: marks >= 40 ? "Pass" : "Fail". Take another input for attendance percentage. Use ternary: attendance >= 75 ? "Eligible for exam" : "Not eligible". Take a third input for age and use ternary: age >= 18 ? "Adult" : "Minor". Display all three results using print().

Question 5: Input Output Formatting
Use stdout.write() to take 5 inputs: name, age, city, occupation, and salary. Use print() to create a formatted profile card:
================================
      PERSONAL PROFILE
================================
Name:       [name]
Age:        [age] years
City:       [city]
Occupation: [occupation]
Salary:     Rs. [salary]
================================

* LEVEL 2: INTERMEDIATE (Questions 6-10)

Question 6: Compound Assignment Calculator
Take a starting number as input. Apply compound assignment operators in sequence:

Add 50 using +=
Multiply by 3 using *=
Subtract 20 using -=
Divide by 2 using ~/= (integer division)
Find modulus with 7 using %=
Print the result after each operation showing the step-by-step transformation.

Question 7: Complex Logical Conditions
Take employee details as input: age, yearsOfExperience, salary, and department (IT/HR/Sales). Check promotion eligibility using complex logical operators:

Condition 1: (age >= 25 && yearsOfExperience >= 5)
Condition 2: (salary >= 40000 && department == "IT")
Condition 3: (yearsOfExperience >= 7 || salary >= 50000)
Final eligibility: Condition1 && (Condition2 || Condition3)
Use stdout.write() for inputs and print() to display detailed analysis with each condition result and final decision.

Question 8: Nested Ternary Grade System
Take percentage as input. Assign grade using nested ternary operators:

percentage >= 90 ? "A+" : percentage >= 80 ? "A" : percentage >= 70 ? "B" : percentage >= 60 ? "C" : percentage >= 50 ? "D" : "F"
Also use another nested ternary for remarks:

grade == "A+" || grade == "A" ? "Excellent" : grade == "B" || grade == "C" ? "Good" : "Needs Improvement"
Display both grade and remarks with proper formatting.

Question 9: Expression Evaluation Challenge
Take three numbers (a, b, c) as input. Calculate and display results of these expressions:

(a + b) * c - a / b
a % b + c * 2 - b ~/ 2
(a > b) && (b < c) || (a == c)
a >= b ? a * 2 : b * 2 + c
(a + b + c) / 3 and check if result >= 50
Show each expression evaluation with the formula and result. Use proper operator precedence.

Question 10: Interactive Eligibility Checker
Create an eligibility system for a competition. Take inputs:

Age
Nationality (Indian/Other)
Education level (Graduate/Post-Graduate/Other)
Work experience (years)
Check eligibility using:

(age >= 21 && age <= 35)
nationality == "Indian"
(education == "Graduate" || education == "Post-Graduate")
(workExperience >= 2 && workExperience <= 10)
Use logical operators to combine all. If eligible, use ternary to determine category:

workExperience >= 5 ? "Senior Category" : "Junior Category"
Display complete analysis with all individual checks and final result using print().

* LEVEL 3: ADVANCED (Questions 11-15)
Focus: Real-world complex scenarios

Question 11: Advanced Calculator with Validation
Build a calculator that takes two numbers and an operator (+, -, *, /, %, ~/) as input using stdout.write(). Validate:

Numbers should not be 0 for division operations
Operator must be valid

Perform calculation using appropriate operator. Use comparison operators to check for special cases:

If result > 1000, add "Large result" message
If result < 0, add "Negative result" message
If result == 0, add "Zero result" message

Use ternary operators for result categorization. Display formatted output with input values, operation performed, result, and category message.

Question 12: Loan Eligibility Complex System
Take comprehensive inputs using stdout.write():

Name, Age, Monthly Income, Existing EMI, Employment Type (Salaried/Self-Employed), Credit Score, Property Value (for home loan)

Calculate:

Available income = Monthly Income - Existing EMI
FOIR (Fixed Obligation to Income Ratio) = (Existing EMI / Monthly Income) * 100

Check multiple eligibility conditions using logical operators:

Basic: (age >= 23 && age <= 58) && creditScore >= 700
Income: availableIncome >= 20000 && FOIR < 50
Employment: (employmentType == "Salaried" && income >= 30000) || (employmentType == "Self-Employed" && income >= 50000)
Property: propertyValue >= 1000000

Final eligibility = Basic && Income && Employment && Property
If eligible, calculate using ternary operators:

Loan amount = employmentType == "Salaried" ? income * 60 : income * 50
Interest rate = creditScore >= 750 ? 8.5 : creditScore >= 700 ? 9.0 : 9.5
Processing fee = loanAmount > 2000000 ? 1.5% : 2%

Use print() to create comprehensive loan eligibility report showing:

All input parameters
Calculated values (available income, FOIR)
Each eligibility check result (pass/fail)
Final decision
If approved: loan amount, interest rate, processing fee, monthly EMI (simplified calculation)

Format professionally with sections and borders.

Question 13: Student Scholarship Complex Calculator
Take student inputs:

Name, Class (10/12/Graduate/Post-Graduate)
Previous year percentage
Family annual income
Category (General/OBC/SC/ST)
Sports achievement (National/State/None)
Extracurricular activities participation (Yes/No)

Use complex logical operators to determine scholarship eligibility:

Academic: (class == "12" && percentage >= 90) || (class == "Graduate" && percentage >= 85) || (class == "Post-Graduate" && percentage >= 80)
Economic: familyIncome <= 300000
Merit bonus: sportsAchievement == "National" || (sportsAchievement == "State" && extracurricular == "Yes")

Calculate scholarship amount using nested ternary:

Base amount = percentage >= 95 ? 50000 : percentage >= 90 ? 40000 : percentage >= 85 ? 30000 : 20000
Category boost = category == "SC" || category == "ST" ? base * 1.5 : category == "OBC" ? base * 1.25 : base
Sports boost = sportsAchievement == "National" ? categoryBoost * 1.3 : sportsAchievement == "State" ? categoryBoost * 1.15 : categoryBoost
Income adjustment = familyIncome < 100000 ? sportsBoost * 1.2 : sportsBoost

Final eligibility = Academic && Economic
Scholarship = eligible ? calculated_amount : 0
Display comprehensive scholarship assessment report with all calculations, conditions checked, and final scholarship amount. Use proper formatting.

Question 14: Insurance Premium Complex Calculator
Take policyholder inputs:

Name, Age, Gender (Male/Female)
Smoker status (Yes/No)
BMI (Body Mass Index)
Pre-existing conditions (Yes/No)
Occupation (Desk Job/Field Job/High Risk)
City tier (1/2/3)
Coverage amount desired
Policy term (years)

Calculate base premium = coverageAmount / 1000
Apply multipliers using operators:

Age factor = age < 30 ? 1.0 : age < 40 ? 1.2 : age < 50 ? 1.5 : age < 60 ? 2.0 : 2.5
Gender factor = gender == "Female" ? 0.95 : 1.0
Smoker factor = smoker == "Yes" ? 1.5 : 1.0
BMI factor = BMI < 18.5 ? 1.1 : BMI < 25 ? 1.0 : BMI < 30 ? 1.3 : 1.6
Pre-existing factor = preExisting == "Yes" ? 1.8 : 1.0
Occupation factor = occupation == "High Risk" ? 2.0 : occupation == "Field Job" ? 1.3 : 1.0
City factor = cityTier == 1 ? 0.9 : cityTier == 2 ? 1.0 : 1.1
Term discount = term >= 20 ? 0.85 : term >= 10 ? 0.9 : 1.0

Final premium = base * age * gender * smoker * BMI * preExisting * occupation * city * term
Use logical operators to determine eligibility:

Age eligible = age >= 18 && age <= 65
BMI acceptable = BMI >= 16 && BMI <= 40
High risk check = !(smoker == "Yes" && preExisting == "Yes" && age > 55 && occupation == "High Risk")

Final eligibility = ageEligible && BMIAcceptable && highRiskCheck
If eligible, calculate quarterly, half-yearly, and annual premium options using arithmetic operators.
If not eligible, use ternary to provide specific rejection reason.
Display comprehensive insurance quote with:

All input parameters
Each factor calculation with explanation
Step-by-step premium calculation
Final premium in different payment modes
Terms and conditions based on risk factors

Format as professional insurance quotation document.

Question 15: Complete Shopping System with Complex Discounts
Build a comprehensive shopping system:
Take inputs:

Number of items to purchase
For each item: name, base price, quantity, category (Electronics/Clothing/Groceries/Books)
Customer type (Regular/Silver/Gold/Platinum)
Is festival season? (Yes/No)
Payment method (Cash/Card/UPI/Wallet)
Total purchase history amount (for loyalty calculation)

For each item calculate:

Subtotal = basePrice * quantity
Category discount using ternary = category == "Electronics" ? 10% : category == "Clothing" ? 15% : category == "Groceries" ? 5% : category == "Books" ? 20% : 0%
Quantity discount = quantity >= 10 ? 10% : quantity >= 5 ? 5% : 0%
Item total after discounts

Calculate cart totals:

Cart subtotal (sum of all items)
Total discount amount

Apply membership discount using nested ternary:

customerType == "Platinum" ? 20% : customerType == "Gold" ? 15% : customerType == "Silver" ? 10% : 0%

Apply festival discount using logical operators:

festivalSeason == "Yes" && cartTotal > 5000 ? 10% : festivalSeason == "Yes" && cartTotal > 2000 ? 5% : 0%

Apply payment method discount:

paymentMethod == "UPI" || paymentMethod == "Wallet" ? 2% : 0%

Calculate loyalty points:

Use comparison and ternary: purchaseHistory >= 50000 ? 1000 bonus points : purchaseHistory >= 25000 ? 500 bonus points : 0
Current purchase points = finalAmount / 100

Calculate GST (different rates for different categories):

Electronics: 18%, Clothing: 12%, Groceries: 5%, Books: 0%

Use logical operators to determine:

Free shipping = finalAmount >= 1000 || customerType == "Gold" || customerType == "Platinum"
Express delivery eligible = finalAmount >= 2000 && (customerType == "Gold" || customerType == "Platinum")
Gift wrapping free = festivalSeason == "Yes" && finalAmount >= 3000

Calculate final amounts:

Shipping charge = freeShipping ? 0 : 100
Grand total = finalAmount + GST + shippingCharge

Display comprehensive bill using print():
================================
     SHOPPING INVOICE
================================
Customer: [name]
Type: [customerType]
Date: [current date]

ITEMS:
--------------------------------
Item 1: [name]
  Base: Rs.[price] x [qty]
  Category Disc: -Rs.[amount]
  Quantity Disc: -Rs.[amount]
  Subtotal: Rs.[amount]
--------------------------------
[... more items ...]

CART SUMMARY:
--------------------------------
Subtotal:        Rs. [amount]
Membership Disc: -Rs. [amount]
Festival Disc:   -Rs. [amount]
Payment Disc:    -Rs. [amount]
After Discounts: Rs. [amount]
GST:             +Rs. [amount]
Shipping:        Rs. [amount]
--------------------------------
GRAND TOTAL:     Rs. [amount]
================================

BENEFITS:
✓ Total Savings: Rs. [amount]
✓ Loyalty Points: [points]
✓ Free Shipping: [Yes/No]
✓ Express Eligible: [Yes/No]

================================
   THANK YOU FOR SHOPPING!
================================
Use all operator types throughout: arithmetic for calculations, comparison for validations, logical for complex conditions, ternary for decision making, compound assignment where applicable.
 */