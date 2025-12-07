//* Question 11: BMI Calculator with Categories
//* Take weight (kg) and height (meters) as input. Calculate BMI = weight / (height * height).
//* Use nested if-else to categorize:
//* - If BMI < 18.5: "Underweight"
//* - Else if BMI < 25: "Normal weight"
//* - Else if BMI < 30: "Overweight"
//* - Else: "Obese"
//* Display BMI value and category.
//* Test with: weight=70, height=1.75

import 'dart:io';

void main() {
  stdout.write("Enter weight (kg): ");
  double weight = double.parse(stdin.readLineSync()!);

  stdout.write("Enter height (meters): ");
  double height = double.parse(stdin.readLineSync()!);

  double bmi = weight / (height * height);

  print("Your BMI: ${bmi.toStringAsFixed(2)}");

  if (bmi < 18.5) {
    print("Category: Underweight");
  } else if (bmi < 25) {
    print("Category: Normal weight");
  } else if (bmi < 30) {
    print("Category: Overweight");
  } else {
    print("Category: Obese");
  }
}
