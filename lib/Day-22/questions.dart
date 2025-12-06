//* Day - 22 Questions
/*

* LEVEL 1: FOUNDATION (Questions 1-7)

Question 1: Personal Information Card
Take user's full name, age, phone number, and email as input using stdout.write(). Use escape sequences \n and \t to display a formatted information card:
================================
    PERSONAL INFORMATION
================================
Name:     [name]
Age:      [age] years
Phone:    [phone]
Email:    [email]
================================

Question 2: Simple Menu Display
Create a calculator menu using escape sequences. Use \n for new lines and \t for indentation:
CALCULATOR MENU
    1. Addition
    2. Subtraction
    3. Multiplication
    4. Division
    5. Exit
Take user's choice as input using stdout.write("Enter choice: ").

Question 3: Quote Formatter
Take a quote text and author name as input. Display the quote with proper formatting using \" and \n:
"[quote text]"
    - [author name]

Question 4: File Path Builder
Take folder name, subfolder name, and filename as input using stdout.write(). Build and display complete file path using \\:
C:\Users\[folder]\[subfolder]\[filename].txt

Question 5: Simple Receipt
Take product name, price, and quantity as input. Calculate total. Use print() to display formatted receipt:
================================
Item:     [name]
Price:    Rs. [price]
Quantity: [qty]
Total:    Rs. [total]
================================

Question 6: Age Calculator
Take birth year as input using stdout.write("Enter birth year: "). Calculate current age (2025 - birth year). Display result using both print() and understand when to use stdout.write() vs print().

Question 7: Address Formatter
Take street address, city, state, and PIN code as inputs. Use \n to display formatted address with each component on a new line.


* LEVEL 2: INTERMEDIATE (Questions 8-14)

Question 8: Student Marks Entry System
Take student name and marks for 3 subjects as input using stdout.write() prompts. Calculate total and percentage. Use escape sequences to display formatted marksheet:
================================
        MARKSHEET
================================
Name:         [name]
Subject 1:    [marks1]
Subject 2:    [marks2]
Subject 3:    [marks3]
--------------------------------
Total:        [total]
Percentage:   [percentage]%
================================

Question 9: Interactive Calculator
Take two numbers and an operator (+, -, *, /) as input using stdout.write(). Perform calculation. Use \n and \t to display formatted result:
================================
     CALCULATION RESULT
================================
Number 1:     [num1]
Operator:     [op]
Number 2:     [num2]
--------------------------------
Result:       [result]
================================

Question 10: Multi-line Message Creator
Take 5 lines of text as input (use 5 separate inputs). Store in a list. Display all lines using a single print() statement with \n separating each line. Show the difference between using multiple print() calls vs one print() with \n.

Question 11: Table Data Display
Take 3 products with their names and prices as input. Display in tabular format using \t:
PRODUCT            PRICE
Product1           Rs. 100
Product2           Rs. 200
Product3           Rs. 300

Question 12: Conversation Builder
Take two person names and two dialogues as input. Format as a conversation using \" and \n:
[Person1]: "First dialogue"
[Person2]: "Second dialogue"

Question 13: Progress Indicator
Take a task name as input. Use stdout.write() to print the task name followed by dots (.) printed using multiple stdout.write() calls to show loading effect: "Task name....." then use print() to show "Complete!" on the next line.

Question 14: Formatted Contact List
Take 3 contacts (name and phone) as input. Store in a map. Display using escape sequences with proper alignment:
================================
      CONTACT LIST
================================
Name              Phone
[name1]           [phone1]
[name2]           [phone2]
[name3]           [phone3]
================================


* LEVEL 3: ADVANCED (Questions 15-20)

Question 15: Complete Shopping Bill Generator
Take customer name as input. Take number of items to purchase. For each item, use stdout.write() to take name, price, and quantity. Calculate:
- Subtotal for each item
- Cart total
- Discount (10% if total > 1000)
- GST (5%)
- Final amount

Use escape sequences to create professional bill:
================================================
           SHOPPING MART
           123 Main Street
================================================

Customer: [name]              Date: 06-Dec-2025
Bill No: [number]

================================================
ITEM                QTY    PRICE      AMOUNT
------------------------------------------------
[item1]             [q]    [p]        [amt]
[item2]             [q]    [p]        [amt]
[item3]             [q]    [p]        [amt]
------------------------------------------------
                    Subtotal:         [subtotal]
                    Discount (10%):   [discount]
                    GST (5%):         [gst]
================================================
                    GRAND TOTAL:      [total]
================================================

        THANK YOU! VISIT AGAIN!
================================================

Question 16: Student Report Card Generator
Take student details as input: name, roll number, class, section. Take marks for 5 subjects using stdout.write() prompts. Calculate:
- Total marks
- Percentage
- Grade using logic: >=90: A+, >=80: A, >=70: B, >=60: C, else: D
- Status: Pass if all subjects >= 40, else Fail

Create comprehensive report card:
================================================
     SCHOOL NAME - REPORT CARD
================================================

Student Details:
    Name:           [name]
    Roll Number:    [roll]
    Class:          [class]
    Section:        [section]
    Academic Year:  2024-2025

================================================
SUBJECT            MARKS    GRADE
------------------------------------------------
Mathematics        [m1]     [g1]
Science            [m2]     [g2]
English            [m3]     [g3]
Social Studies     [m4]     [g4]
Hindi              [m5]     [g5]
------------------------------------------------
TOTAL:             [total]
PERCENTAGE:        [percentage]%
OVERALL GRADE:     [grade]
STATUS:            [Pass/Fail]
================================================

Teacher's Remarks: [Add remarks based on performance]

Class Teacher: _________    Principal: _________

================================================

Question 17: Bank Transaction Receipt
Take account holder name, account number, and transaction type (Deposit/Withdrawal) as input. Take transaction amount. For withdrawal, check if amount is valid (you can assume initial balance of 50000). Calculate:
- New balance
- Transaction charges (Rs. 20 for withdrawal, Free for deposit)
- Final balance after charges

Display formatted transaction receipt:
================================================
          BANK NAME
          Transaction Receipt
================================================

Date: 06-Dec-2025           Time: [current time]
Transaction ID: TXN[random number]

Account Holder: [name]
Account Number: [number]

Transaction Type:    [Deposit/Withdrawal]
Amount:              Rs. [amount]
Transaction Charge:  Rs. [charge]
------------------------------------------------
Previous Balance:    Rs. [prev_balance]
Current Balance:     Rs. [curr_balance]
================================================

Thank you for banking with us!

Customer Care: 1800-XXX-XXXX
================================================

Question 18: Movie Ticket Booking System
Take movie name, show time, number of tickets, and seat type (Gold/Silver/Bronze) as input using stdout.write(). Calculate:
- Ticket prices: Gold = Rs. 300, Silver = Rs. 200, Bronze = Rs. 150
- Subtotal (price × quantity)
- Convenience fee: Rs. 30 per ticket
- GST (18%)
- Total amount

Display formatted ticket:
================================================
         CINEMA NAME - SCREEN 2
================================================

Movie:          [MOVIE NAME]
Language:       Hindi        Format: 2D
Rating:         U/A          Duration: 2h 30m

Date:           06-Dec-2025
Show Time:      [time]

Seat Numbers:   [Generate seat numbers based on quantity]
Ticket Type:    [Gold/Silver/Bronze]
No. of Tickets: [qty]

------------------------------------------------
PRICE BREAKUP
------------------------------------------------
Ticket Price ([qty] x [price]):        [subtotal]
Convenience Fee ([qty] x 30):          [fee]
GST (18%):                             [gst]
------------------------------------------------
Total Amount:                  Rs. [total]
------------------------------------------------

Booking ID: BK[random number]
Payment Mode: [Take input: Cash/Card/UPI]

================================================
     TERMS & CONDITIONS
================================================
*   No outside food allowed
*   Be seated before show starts
*   Ticket once booked cannot be cancelled

================================================
        ENJOY THE SHOW!
================================================

Question 19: Restaurant Order System
Create a menu map with 8 items and prices. Display menu using proper formatting with \t and \n. Take customer name using stdout.write(). Take number of items to order. For each item, take item name and quantity as input. Validate if item exists in menu. Calculate:
- Item-wise cost (price × quantity)
- Subtotal
- Service charge (10%)
- GST (5%)
- Total amount

Display professional restaurant bill:
================================================
        RESTAURANT NAME
        123 Food Street, Mumbai
        Phone: 022-12345678
================================================

Date: 06-Dec-2025              Bill No: R[number]
Time: [time]                   Table No: [number]
Cashier: [name]

Customer: [customer_name]

================================================
ITEM                QTY    RATE       AMOUNT
------------------------------------------------
[item1]             [q]    [rate]     [amt]
[item2]             [q]    [rate]     [amt]
[item3]             [q]    [rate]     [amt]
------------------------------------------------
                    Subtotal:         [subtotal]
                    Service (10%):    [service]
                    CGST (2.5%):      [cgst]
                    SGST (2.5%):      [sgst]
================================================
                    GRAND TOTAL:      [total]
================================================

Payment Mode: [Cash/Card/UPI]

        THANK YOU! VISIT AGAIN!
          www.restaurantname.com
================================================

Question 20: Complete Employee Attendance & Salary Slip
Take employee details using stdout.write() prompts:
- Name, Employee ID, Department, Designation
- Basic salary, Days present (out of 30)
- Performance rating (A/B/C)

Calculate:
- Attendance percentage
- HRA (20% of basic)
- DA (15% of basic)
- Performance bonus: A = 15% of basic, B = 10%, C = 5%
- Gross salary (basic + allowances)
- Deductions: PF (12% of basic), Professional tax (Rs. 200)
- Net salary

Also show attendance analysis:
- If attendance < 75%, mark as "Low Attendance - Warning"
- If attendance >= 95%, add Rs. 2000 as attendance bonus

Create comprehensive salary slip:
================================================
        COMPANY NAME PVT LTD
        Salary Slip for December 2025
================================================

Employee Details:
    Name:           [name]
    Employee ID:    [id]
    Department:     [dept]
    Designation:    [desig]
    Days Present:   [days]/30
    Attendance:     [percentage]%

================================================
EARNINGS                           AMOUNT (Rs.)
------------------------------------------------
Basic Salary                       [basic]
House Rent Allowance (20%)         [hra]
Dearness Allowance (15%)           [da]
Performance Bonus                  [bonus]
Attendance Bonus                   [att_bonus]
------------------------------------------------
Gross Earnings                     [gross]

DEDUCTIONS
------------------------------------------------
Provident Fund (12%)               [pf]
Professional Tax                   200.00
------------------------------------------------
Total Deductions                   [deductions]

================================================
NET SALARY                         [net]
================================================

In Words: [Amount in words]

Remarks: [Add remarks based on attendance and performance]

------------------------------------------------
This is a system generated slip.
No signature required.
================================================
 */