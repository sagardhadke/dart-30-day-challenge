//* Question 20: Complete Employee Attendance & Salary Slip
//* Take employee details using stdout.write() prompts:
//* - Name, Employee ID, Department, Designation
//* - Basic salary, Days present (out of 30)
//* - Performance rating (A/B/C)
//*
//* Calculate:
//* - Attendance percentage
//* - HRA (20% of basic)
//* - DA (15% of basic)
//* - Performance bonus: A = 15% of basic, B = 10%, C = 5%
//* - Gross salary (basic + allowances)
//* - Deductions: PF (12% of basic), Professional tax (Rs. 200)
//* - Net salary
//*
//* Also show attendance analysis:
//* - If attendance < 75%, mark as "Low Attendance - Warning"
//* - If attendance >= 95%, add Rs. 2000 as attendance bonus
//*
//* Create comprehensive salary slip:
//* ================================================
//*         COMPANY NAME PVT LTD
//*         Salary Slip for December 2025
//* ================================================
//*
//* Employee Details:
//*     Name:           [name]
//*     Employee ID:    [id]
//*     Department:     [dept]
//*     Designation:    [desig]
//*     Days Present:   [days]/30
//*     Attendance:     [percentage]%
//*
//* ================================================
//* EARNINGS                           AMOUNT (Rs.)
//* ------------------------------------------------
//* Basic Salary                       [basic]
//* House Rent Allowance (20%)         [hra]
//* Dearness Allowance (15%)           [da]
//* Performance Bonus                  [bonus]
//* Attendance Bonus                   [att_bonus]
//* ------------------------------------------------
//* Gross Earnings                     [gross]
//*
//* DEDUCTIONS
//* ------------------------------------------------
//* Provident Fund (12%)               [pf]
//* Professional Tax                   200.00
//* ------------------------------------------------
//* Total Deductions                   [deductions]
//*
//* ================================================
//* NET SALARY                         [net]
//* ================================================
//*
//* In Words: [Amount in words]
//*
//* Remarks: [Add remarks based on attendance and performance]
//*
//* ------------------------------------------------
//* This is a system generated slip.
//* No signature required.
//* ================================================

import 'dart:io';

String convertToWords(int n) {
  List<String> ones = [
    "",
    "One",
    "Two",
    "Three",
    "Four",
    "Five",
    "Six",
    "Seven",
    "Eight",
    "Nine",
  ];
  return ones[n ~/ 1000] + " Thousand";
}

void main() {
  stdout.write("Enter employee name: ");
  String name = stdin.readLineSync()!;

  stdout.write("Enter Employee ID: ");
  String id = stdin.readLineSync()!;

  stdout.write("Enter Department: ");
  String dept = stdin.readLineSync()!;

  stdout.write("Enter Designation: ");
  String desig = stdin.readLineSync()!;

  stdout.write("Enter Basic Salary: ");
  double basic = double.parse(stdin.readLineSync()!);

  stdout.write("Enter Days Present (out of 30): ");
  int days = int.parse(stdin.readLineSync()!);

  stdout.write("Enter Performance Rating (A/B/C): ");
  String rating = stdin.readLineSync()!;

  double attendancePercent = (days / 30) * 100;

  double hra = basic * 0.20;
  double da = basic * 0.15;

  double bonus = rating == "A"
      ? basic * 0.15
      : rating == "B"
      ? basic * 0.10
      : basic * 0.05;

  double attBonus = attendancePercent >= 95 ? 2000 : 0;

  if (attendancePercent < 75) {
    print("Warning: Low Attendance!");
  }

  double gross = basic + hra + da + bonus + attBonus;

  double pf = basic * 0.12;
  double deductions = pf + 200;

  double net = gross - deductions;

  print("================================================");
  print("        COMPANY NAME PVT LTD");
  print("        Salary Slip for December 2025");
  print("================================================");
  print("Employee Details:");
  print("    Name:\t$name");
  print("    Employee ID:\t$id");
  print("    Department:\t$dept");
  print("    Designation:\t$desig");
  print("    Days Present:\t$days/30");
  print("    Attendance:\t${attendancePercent.toStringAsFixed(2)}%");
  print("================================================");
  print("EARNINGS\t\tAMOUNT (Rs.)");
  print("------------------------------------------------");
  print("Basic Salary\t\t$basic");
  print("HRA (20%)\t\t$hra");
  print("Dearness Allowance (15%)\t$da");
  print("Performance Bonus\t$bonus");
  print("Attendance Bonus\t$attBonus");
  print("------------------------------------------------");
  print("Gross Earnings\t\t$gross");
  print("\nDEDUCTIONS");
  print("------------------------------------------------");
  print("Provident Fund (12%)\t$pf");
  print("Professional Tax\t200");
  print("------------------------------------------------");
  print("Total Deductions\t$deductions");
  print("================================================");
  print("NET SALARY\t\t$net");
  print("================================================");
  print("In Words: ${convertToWords(net.toInt())} Rupees Only");
  print(
    "Remarks: ${attendancePercent < 75 ? "Improve attendance" : "Good performance"}",
  );
  print("------------------------------------------------");
  print("This is a system generated slip.");
  print("No signature required.");
  print("================================================");
}
