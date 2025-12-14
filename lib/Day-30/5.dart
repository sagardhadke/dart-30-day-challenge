//* Question 5: Temperature Converter with Validation
//* Create function convertTemperature() with named parameters: temp, fromUnit, toUnit. Use if-else to convert between Celsius and Fahrenheit. Use do-while loop to keep asking input until valid unit (C/F) is entered. Display result with escape sequences.

import 'dart:io';

double convertTemperature({
  required double temp,
  required String fromUnit,
  required String toUnit,
}) {
  if (fromUnit == 'C' && toUnit == 'F') {
    return (temp * 9 / 5) + 32;
  } else if (fromUnit == 'F' && toUnit == 'C') {
    return (temp - 32) * 5 / 9;
  }
  return temp;
}

void main() {
  String unit;
  do {
    stdout.write("Enter unit (C/F): ");
    unit = stdin.readLineSync()!.toUpperCase();
  } while (unit != 'C' && unit != 'F');

  stdout.write("Enter temperature: ");
  double temp = double.parse(stdin.readLineSync()!);

  String target = unit == 'C' ? 'F' : 'C';
  double result = convertTemperature(
    temp: temp,
    fromUnit: unit,
    toUnit: target,
  );

  print(
    "\nConverted Temperature:\n$temp°$unit = ${result.toStringAsFixed(2)}°$target",
  );
}
