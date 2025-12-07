//* Question 12: Ticket Pricing System
//* Take age as input. Calculate ticket price using nested if-else:
//* - If age < 5: Free (Rs. 0)
//* - Else if age < 12: Child ticket (Rs. 100)
//* - Else if age < 60: Adult ticket (Rs. 200)
//* - Else (age >= 60): Senior citizen ticket (Rs. 150)
//* Take number of tickets as input. Calculate total cost.
//* Display: age category, ticket price, number of tickets, total cost.
//* Test with: age=3, age=10, age=35, age=65

import 'dart:io';

void main() {
  stdout.write("Enter age: ");
  int age = int.parse(stdin.readLineSync()!);

  int price = 0;
  String category = "";

  if (age < 5) {
    price = 0;
    category = "Free";
  } else if (age < 12) {
    price = 100;
    category = "Child Ticket";
  } else if (age < 60) {
    price = 200;
    category = "Adult Ticket";
  } else {
    price = 150;
    category = "Senior Citizen Ticket";
  }

  stdout.write("Enter number of tickets: ");
  int qty = int.parse(stdin.readLineSync()!);

  int total = price * qty;

  print("Category: $category");
  print("Ticket Price: Rs. $price");
  print("Number of Tickets: $qty");
  print("Total Cost: Rs. $total");
}
