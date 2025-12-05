//* Question 2: Temperature Converter with Validation
//* Take temperature value and unit (C/F) as input using stdout.write(). Use logical operators to validate unit input. If unit is C, convert to Fahrenheit: F = (C × 9/5) + 32. If unit is F, convert to Celsius: C = (F - 32) × 5/9. Use comparison operators to categorize temperature: >40°C or >104°F = "Very Hot", 30-40°C or 86-104°F = "Hot", 20-30°C or 68-86°F = "Warm", 10-20°C or 50-68°F = "Cool", <10°C or <50°F = "Cold". Display formatted output with original temp, converted temp, and category.

import 'dart:io';

void main() {
  stdout.write("Enter temperature value: ");
  double t = double.parse(stdin.readLineSync()!);

  stdout.write("Enter unit (C/F): ");
  String u = stdin.readLineSync()!.toUpperCase();

  if (!(u == "C" || u == "F")) {
    print("Invalid unit!");
    return;
  }

  double converted = (u == "C") ? ((t * 9 / 5) + 32) : ((t - 32) * 5 / 9);

  double check = (u == "C") ? t : converted;

  String category = check > 40
      ? "Very Hot"
      : check >= 30
      ? "Hot"
      : check >= 20
      ? "Warm"
      : check >= 10
      ? "Cool"
      : "Cold";

  print("\n===== TEMPERATURE REPORT =====");
  print("Original: $t °$u");
  print("Converted: ${converted.toStringAsFixed(2)} °${u == 'C' ? 'F' : 'C'}");
  print("Category: $category");
}
