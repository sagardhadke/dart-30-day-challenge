//* Day - 8 Questions
/*

* LEVEL 1: BEGINNER

Q1: AND Operator (&&) Practice:
Create two variables: age = 25, hasLicense = true
Check: age >= 18 && hasLicense == true
Print the result (should be true)
Change hasLicense to false and check again

Q2: OR Operator (||) Practice:
Create: isWeekend = true, isHoliday = false
Check: isWeekend || isHoliday (true if either is true)
Print result
Try with both false, then both true

Q3: NOT Operator (!) Practice:
Create: isRaining = true
Print: !isRaining (opposite of isRaining)
Create: isOnline = false
Print: !isOnline

Q4: Simple Login Check:
username = 'admin', password = '1234'
Check: username == 'admin' && password == '1234'
Print: true (valid login) or false (invalid)

Q5: Eligibility Checker:
marks = 75, attendance = 80
Check: marks >= 60 && attendance >= 75
Print whether student is eligible (true/false)

Q6: Weekend or Holiday:
day = 'Saturday', isHoliday = false
Check: day == 'Saturday' || day == 'Sunday' || isHoliday
Print result

Q7. NOT Operator Examples:
isPaid = false
Check: !isPaid (is payment pending?)
isLocked = true
Check: !isLocked (is it unlocked?)
Print both results

Q8. Age Range Check:
age = 16
Check: age >= 13 && age <= 19 (is teenager?)
Print result
Try with age = 25

Q9. Multiple Conditions with AND:
temp = 25, isRaining = false, hasUmbrella = true
Check: temp > 20 && !isRaining (good weather?)
Print result

Q10. Multiple Conditions with OR:
payment = 'cash'
Check: payment == 'cash' || payment == 'card' || payment == 'upi'
Print if payment method is valid

*LEVEL 2: INTERMEDIATE

Q11. Simple Ternary:
age = 20
String status = age >= 18 ? 'Adult' : 'Minor';
Print status

Q12. Pass/Fail Using Ternary:
marks = 65
String result = marks >= 40 ? 'Pass' : 'Fail';
Print result

Q13. Discount Eligibility:
amount = 1500
String discount = amount >= 1000 ? '10% discount' : 'No discount';
Print discount message

Q14. Even/Odd with Ternary:
number = 47
String type = number % 2 == 0 ? 'Even' : 'Odd';
Print type

Q15. Temperature Message:
temp = 35
String message = temp > 30 ? 'Hot day' : 'Pleasant day';
Print message

Q16. Grade Assignment:
marks = 85
String grade = marks >= 90 ? 'A' : marks >= 75 ? 'B' : 'C'; (nested ternary)
Print grade

Q17. Ticket Pricing:
age = 14
int price = age < 12 ? 100 : age >= 60 ? 150 : 200; (child/senior/adult)
Print ticket price

Q18. Combining Logical + Ternary:
age = 25, hasJob = true
String status = age >= 18 && hasJob ? 'Independent' : 'Dependent';
Print status

Q19. Shipping Charge:
orderValue = 800
int shipping = orderValue >= 500 ? 0 : 50; (free shipping above 500)
Print shipping charge

Q20. Membership Type:
yearsSubscribed = 3
String membership = yearsSubscribed >= 5 ? 'Gold' : yearsSubscribed >= 2 ? 'Silver' : 'Bronze';
Print membership level

 */
