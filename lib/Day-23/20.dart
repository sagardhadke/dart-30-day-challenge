//* Question 20: Comprehensive Admission Eligibility System
//* Take following inputs for college admission:
//* - Student name
//* - 10th percentage
//* - 12th percentage
//* - Entrance exam score (out of 100)
//* - Category (General/OBC/SC/ST)
//* - State (Home State/Other State)
//* - Sports quota (Yes/No)
//* - Economically Weaker Section - EWS (Yes/No)
//*
//* Use nested if-else for eligibility:
//*
//* Minimum eligibility (must satisfy):
//* - 10th percentage >= 60%
//* - 12th percentage >= 60%
//* - Entrance exam score >= 40
//*
//* If minimum eligibility satisfied, calculate composite score:
//* Composite = (12th percentage * 0.4) + (Entrance exam score * 0.6)
//*
//* Category-wise cutoff for composite score:
//* - General: >= 75
//* - OBC: >= 70
//* - SC/ST: >= 65
//*
//* Special considerations (add to composite score):
//* - Sports quota: +5 points
//* - EWS: +3 points
//* - Home State: +2 points
//*
//* After calculating final composite score, check admission:
//* If composite >= (cutoff + special considerations):
//*   Determine course eligibility:
//*   - If final composite >= 85: "Eligible for Premium Courses (Engineering/Medical)"
//*   - Else if final composite >= 75: "Eligible for Regular Courses"
//*   - Else if final composite >= 65: "Eligible for Basic Courses"
//* Else:
//*   "Not Eligible - Score below cutoff"
//*
//* Also check scholarship eligibility:
//* - If 12th percentage >= 90 and composite >= 85: "Full Scholarship (100%)"
//* - Else if 12th percentage >= 80 and composite >= 75: "Partial Scholarship (50%)"
//* - Else if EWS and composite >= 70: "EWS Scholarship (75%)"
//* - Else: "No Scholarship"
//*
//* Display comprehensive admission report:
//* ================================
//*    ADMISSION ELIGIBILITY REPORT
//* ================================
//* Student Name:    [name]
//* Category:        [category]
//*
//* Academic Records:
//*   10th %:        [percentage]
//*   12th %:        [percentage]
//*   Entrance:      [score]/100
//*
//* Composite Score:
//*   Base Score:    [base]
//*   Bonus Points:  [bonus]
//*   Final Score:   [final]
//*
//* Category Cutoff: [cutoff]
//* Required Score:  [required]
//*
//* ================================
//* ADMISSION STATUS: [Eligible/Not Eligible]
//* COURSE TYPE:      [Premium/Regular/Basic]
//* SCHOLARSHIP:      [Full/Partial/EWS/None]
//* ================================
//*
//* Test with multiple combinations of inputs.

import 'dart:io';

void main() {
  stdout.write("Enter Student Name: ");
  String name = stdin.readLineSync()!;

  stdout.write("10th Percentage: ");
  double p10 = double.parse(stdin.readLineSync()!);

  stdout.write("12th Percentage: ");
  double p12 = double.parse(stdin.readLineSync()!);

  stdout.write("Entrance Exam Score (out of 100): ");
  double entrance = double.parse(stdin.readLineSync()!);

  stdout.write("Category (General/OBC/SC/ST): ");
  String category = stdin.readLineSync()!;

  stdout.write("State (Home State/Other State): ");
  String state = stdin.readLineSync()!;

  stdout.write("Sports Quota (Yes/No): ");
  String sports = stdin.readLineSync()!;

  stdout.write("EWS (Yes/No): ");
  String ews = stdin.readLineSync()!;

  print("=========== ADMISSION REPORT ===========");

  if (p10 < 60 || p12 < 60 || entrance < 40) {
    print("Not Eligible — Minimum Criteria Not Met");
    return;
  }

  double baseScore = p12 * 0.4 + entrance * 0.6;
  double bonus = 0;

  if (sports == "Yes") bonus += 5;
  if (ews == "Yes") bonus += 3;
  if (state == "Home State") bonus += 2;

  double finalScore = baseScore + bonus;

  double cutoff = category == "General"
      ? 75
      : category == "OBC"
      ? 70
      : 65;

  double required = cutoff;

  print("Student Name: $name");
  print("10th %: $p10");
  print("12th %: $p12");
  print("Entrance: $entrance");
  print("Base Score: $baseScore");
  print("Bonus Points: $bonus");
  print("Final Composite Score: $finalScore");
  print("Category Cutoff: $cutoff");

  if (finalScore >= required) {
    print("STATUS: Eligible");

    if (finalScore >= 85)
      print("Course: Premium Courses");
    else if (finalScore >= 75)
      print("Course: Regular Courses");
    else
      print("Course: Basic Courses");

    if (p12 >= 90 && finalScore >= 85)
      print("Scholarship: Full (100%)");
    else if (p12 >= 80 && finalScore >= 75)
      print("Scholarship: Partial (50%)");
    else if (ews == "Yes" && finalScore >= 70)
      print("Scholarship: EWS (75%)");
    else
      print("Scholarship: None");
  } else {
    print("STATUS: Not Eligible — Below Cutoff");
  }

  print("========================================");
}
