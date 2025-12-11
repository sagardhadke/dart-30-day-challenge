//* Question 9: Named Parameters with Required
//* Create a function calculateBMI() with named parameters: required double weight, required double height. Calculate and return BMI. Display BMI with category (Underweight/Normal/Overweight/Obese).

double calculateBMI({required double weight, required double height}) {
  return weight / (height * height);
}

String getBMICategory(double bmi) {
  if (bmi < 18.5) return "Underweight";
  if (bmi < 25) return "Normal";
  if (bmi < 30) return "Overweight";
  return "Obese";
}

void main() {
  double bmi = calculateBMI(weight: 70, height: 1.75);
  print("BMI: ${bmi.toStringAsFixed(2)}");
  print("Category: ${getBMICategory(bmi)}");
}
