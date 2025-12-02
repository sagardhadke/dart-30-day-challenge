//* Question 10: Interactive Eligibility Checker
//* Create an eligibility system for a competition. Take inputs:
//*
//* Age
//* Nationality (Indian/Other)
//* Education level (Graduate/Post-Graduate/Other)
//* Work experience (years)
//* Check eligibility using:
//*
//* (age >= 21 && age <= 35)
//* nationality == "Indian"
//* (education == "Graduate" || education == "Post-Graduate")
//* (workExperience >= 2 && workExperience <= 10)
//* Use logical operators to combine all. If eligible, use ternary to determine category:
//*
//* workExperience >= 5 ? "Senior Category" : "Junior Category"
//* Display complete analysis with all individual checks and final result using print().
//*
//* LEVEL 3: ADVANCED (Questions 11-15)
//* Focus: Real-world complex scenarios

import 'dart:io';

void main() {
  stdout.write("Age: ");
  int age = int.parse(stdin.readLineSync()!);

  stdout.write("Nationality: ");
  String nat = stdin.readLineSync()!;

  stdout.write("Education: ");
  String edu = stdin.readLineSync()!;

  stdout.write("Experience: ");
  int exp = int.parse(stdin.readLineSync()!);

  bool c1 = age >= 21 && age <= 35;
  bool c2 = nat == "Indian";
  bool c3 = edu == "Graduate" || edu == "Post-Graduate";
  bool c4 = exp >= 2 && exp <= 10;

  bool finalEligible = c1 && c2 && c3 && c4;

  String category = exp >= 5 ? "Senior Category" : "Junior Category";

  print("\nEligibility: $finalEligible");
  if (finalEligible) print("Category: $category");
}
