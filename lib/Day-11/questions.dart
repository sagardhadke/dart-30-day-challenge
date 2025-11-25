//* Day - 11 Questions
/*

Question 1: Exam Performance Predictor
Create a map of students with their marks in 3 subjects stored as a list. Calculate total and percentage for each. Predict final grade using: percentage >= 90 AND all subjects >= 80 (A+), percentage >= 80 AND no subject < 70 (A), percentage >= 70 AND no subject < 60 (B), otherwise (C). Print complete report card with predictions.

Question 2: Electricity Bill Generator
Units consumed by 8 houses stored in a list. Rates: 0-100 units (Rs. 3/unit), 101-200 (Rs. 5/unit), 201-300 (Rs. 7/unit), 300+ (Rs. 10/unit). Add fixed charge Rs. 50. If bill > Rs. 1000, add 10% electricity duty. If consumption > 300 units, add Rs. 200 surcharge. Calculate individual bills and total revenue.

Question 3: Restaurant Table Booking
Create a map of table numbers and their capacities (2, 4, 6, 8 seaters). You have 7 booking requests with different party sizes stored in a list. Allocate smallest suitable table for each party. If no table available, mark as "Waiting". If party size > largest table, suggest splitting. Print allocation report.

Question 4: Bank Transaction Validator
Starting balance Rs. 50000. List of 10 transactions (positive for deposit, negative for withdrawal). For each transaction: check if withdrawal is possible (balance sufficient), apply Rs. 20 charge for withdrawals, add 4% interest on deposits > Rs. 10000, maintain minimum balance Rs. 5000 (else Rs. 500 penalty). Calculate final balance with all transactions and charges.

Question 5: Fitness Challenge Tracker
Create a map of 6 participants with their daily step counts stored as lists (7 days). Calculate weekly total for each. Find who walked most and least. Check who met daily target of 10000 steps for at least 5 days. Calculate average steps per day for each participant. Declare winner (highest total AND met target >= 5 days).

Question 6: Cab Fare Calculator
Base fare Rs. 50. Day rates (6am-10pm): Rs. 12/km, night rates (10pm-6am): Rs. 18/km. Waiting charge Rs. 2/minute if stopped. Create 5 trip records with distance, time (day/night), waiting minutes. If trip > 20km, apply 10% discount. If premium cab, multiply by 1.5x. Calculate individual fares and total earnings.

Question 7: School Grade Distribution
Create a map of 20 students with their percentages. Count distribution: A+ (90-100), A (80-89), B (70-79), C (60-69), D (50-59), F (below 50). Calculate what percentage of class got each grade. Find median percentage (middle value when sorted). Print complete grade analysis.

Question 8: Tournament Match Scheduler
8 teams stored in a list. Each team plays every other team once (round-robin). Calculate total matches needed. If team wins, it gets 3 points, draw gets 1 point, loss gets 0. Create a hypothetical points table for all teams. Find top 4 teams. Check if any two teams have equal points (tiebreaker needed).

Question 9: Insurance Premium Complex Calculator
Age, smoking status, pre-existing conditions, city tier (1/2/3), occupation risk (high/medium/low) for 5 people stored appropriately. Base premium Rs. 10000. Add Rs. 5000 if age > 45, Rs. 8000 if smoker, Rs. 12000 if pre-existing condition exists. Multiply by 1.5 if high risk occupation, 1.2 if medium. Reduce by 10% if tier 1 city (better healthcare). Calculate for all 5 people.

Question 10: E-Learning Platform Analytics
Create a map of 12 students with their course completion percentages and quiz scores (list of 5 quizzes). Student passes if: completion >= 90% AND average quiz score >= 70% AND no quiz score < 50%. Calculate pass/fail for each. Find top 3 performers based on: (completion% + average quiz score) / 2. Print detailed analytics report.

*/
