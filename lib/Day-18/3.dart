//* Question 3: Logical Decision Maker
//* Take age and hasLicense (true/false as string, then convert to bool) as input. Check eligibility to drive using: age >= 18 && hasLicense. Also check: age >= 18 || hasLicense (can apply for license). Use NOT operator to check: !hasLicense (needs license). Print all three conditions with results.

import 'dart:io';

void main() {
  stdout.write("Enter age: ");
  int age = int.parse(stdin.readLineSync()!);

  stdout.write("Has license? (true/false): ");
  bool hasLicense = stdin.readLineSync()!.toLowerCase() == "true";

  bool canDrive = age >= 18 && hasLicense;
  bool canApply = age >= 18 || hasLicense;
  bool needsLicense = !hasLicense;

  print("\nEligible to drive: $canDrive");
  print("Can apply for license: $canApply");
  print("Needs license: $needsLicense");
}
