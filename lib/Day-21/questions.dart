//* Day - 21 Questions
/*

Question 1: Complete Student Database
Take number of students (max 5) as input. For each student take: name, age, and marks for 3 subjects. Store in appropriate data structure (map with nested data). Calculate for each: total marks, percentage, grade using ternary (>=90: A+, >=75: A, >=60: B, else: C). Find class topper and average percentage. Use print() with escape sequences to display formatted class report with all student details.

Question 2: Temperature Converter with Validation
Take temperature value and unit (C/F) as input using stdout.write(). Use logical operators to validate unit input. If unit is C, convert to Fahrenheit: F = (C × 9/5) + 32. If unit is F, convert to Celsius: C = (F - 32) × 5/9. Use comparison operators to categorize temperature: >40°C or >104°F = "Very Hot", 30-40°C or 86-104°F = "Hot", 20-30°C or 68-86°F = "Warm", 10-20°C or 50-68°F = "Cool", <10°C or <50°F = "Cold". Display formatted output with original temp, converted temp, and category.

Question 3: Shopping Discount Calculator
Create a products list with 6 items and their prices stored in a map. Take customer type (Regular/Premium/VIP) and purchase day (Monday-Sunday) as input. For each item user wants to buy, take quantity. Calculate subtotal. Apply discounts using nested ternary: VIP = 25%, Premium = 15%, Regular = 5%. If purchase day is weekend (Saturday/Sunday), add extra 10% discount using logical operators. Calculate final amount with 8% GST. Use escape sequences to create professional bill with \n and \t.

Question 4: Bank Loan EMI Calculator
Take loan amount, annual interest rate, and loan tenure (years) as input. Validate using comparison operators: amount >= 100000, rate >= 5 && rate <= 20, tenure >= 1 && tenure <= 30. Calculate monthly interest rate = annual/12/100. Calculate number of months = tenure × 12. Use formula for EMI (simplified): EMI = [amount × monthlyRate × (1+monthlyRate)^months] / [(1+monthlyRate)^months - 1]. For now, calculate approximate EMI = (amount + (amount × rate/100 × tenure)) / (tenure × 12). Calculate total payment and total interest. Use ternary to determine loan status: amount > 5000000 ? "High Value" : amount > 1000000 ? "Medium Value" : "Regular". Display formatted loan details with all calculations using escape sequences.

Question 5: Inventory Management with Alerts
Create inventory map with 8 products containing: stock quantity and minimum stock level. Display inventory using \t for alignment. Take operation choice: 1) Add Stock, 2) Remove Stock, 3) Check Alerts. For Add/Remove, take product name and quantity as input. Validate product exists using .containsKey() and quantity is valid using comparison operators. Update stock. For Check Alerts, use logical operators to categorize: stock < minimum/2 ? "CRITICAL" : stock < minimum ? "LOW" : stock >= minimum × 2 ? "OVERSTOCKED" : "OK". Display color-coded alerts (use text labels). Count products in each category and display summary.

Question 6: Fitness Tracker Analyzer
Take user's name, age, weight (kg), and height (meters) as input. Calculate BMI = weight / (height × height). Use nested ternary for BMI category: <18.5 = "Underweight", 18.5-24.9 = "Normal", 25-29.9 = "Overweight", >=30 = "Obese". Take daily steps for 7 days as input and store in list. Calculate total steps, average steps, and count days >= 10000 steps. Use logical operators to determine fitness level: (BMI >= 18.5 && BMI <= 24.9) && (average >= 10000) = "Excellent", (BMI >= 18.5 && BMI <= 29.9) && (average >= 7500) = "Good", else = "Needs Improvement". Display comprehensive fitness report using escape sequences with proper formatting.

Question 7: Restaurant Table Booking System
Create a map of 10 tables with their capacities: {'T1': 2, 'T2': 2, 'T3': 4, 'T4': 4, 'T5': 4, 'T6': 6, 'T7': 6, 'T8': 8, 'T9': 8, 'T10': 10}. Create another map to track booked tables (initially empty). Take number of booking requests. For each request, take party size and time slot (Lunch/Dinner). Find suitable table using comparison operators (capacity >= party size). Use logical operators to check: table not already booked for that time slot. If suitable table found, book it and add to booked tables map. If not found, add to waiting list. Display booking summary with table allocation, waiting list, and available tables for each time slot using formatted output.

Question 8: Exam Eligibility Complex Checker
Take student details: name, previous semester percentage, attendance%, number of backlogs, and fee payment status (Paid/Pending). Check eligibility using complex logical operators: (percentage >= 40 && attendance >= 75 && backlogs == 0 && feeStatus == "Paid"). If eligible, calculate exam fee using ternary: attendance >= 90 ? 500 (discount) : attendance >= 80 ? 750 (partial discount) : 1000 (regular). If not eligible, determine exact reason using individual condition checks and provide specific message. Use escape sequences to create formatted eligibility certificate if eligible, or rejection notice with improvement suggestions if not eligible.

Question 9: Multi-Currency Converter
Create a map with currency exchange rates: {'USD': 83.5, 'EUR': 90.2, 'GBP': 105.8, 'JPY': 0.56, 'AUD': 54.3} (rates to INR). Take amount in INR and target currency as input using stdout.write(). Validate currency exists using .containsKey(). Calculate converted amount. Also calculate reverse (if they have that foreign currency, how much INR they get). Add conversion fee using ternary: amount >= 100000 ? 1% : amount >= 50000 ? 1.5% : 2%. Calculate net amount after fee. Use comparison operators to suggest: if converting >100000, show "Bulk conversion - better rates available". Display formatted conversion details with both directions, fees, and suggestions using \n and \t.

Question 10: Complete Employee Payroll System
Take employee details: name, employee ID, basic salary, years of service, department (IT/Sales/HR/Operations), and performance rating (A/B/C/D). Calculate salary components using operators:

HRA: 30% of basic
DA: 20% of basic
Transport: department == "Sales" ? 5000 : 3000
Performance bonus using nested ternary: A = 25% of basic, B = 15%, C = 10%, D = 0%
Experience bonus: years >= 10 ? 15000 : years >= 5 ? 10000 : years >= 3 ? 5000 : 0
Gross = basic + all allowances
Deductions: PF = 12% of basic, Tax using ternary: gross > 100000 ? 15% : gross > 50000 ? 10% : 5%, Professional tax = 200
Net Salary = Gross - all deductions



 */