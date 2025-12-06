//* Question 18: Movie Ticket Booking System
//* Take movie name, show time, number of tickets, and seat type (Gold/Silver/Bronze) as input using stdout.write(). Calculate:
//* - Ticket prices: Gold = Rs. 300, Silver = Rs. 200, Bronze = Rs. 150
//* - Subtotal (price × quantity)
//* - Convenience fee: Rs. 30 per ticket
//* - GST (18%)
//* - Total amount
//*
//* Display formatted ticket:
//* ================================================
//*          CINEMA NAME - SCREEN 2
//* ================================================
//*
//* Movie:          [MOVIE NAME]
//* Language:       Hindi        Format: 2D
//* Rating:         U/A          Duration: 2h 30m
//*
//* Date:           06-Dec-2025
//* Show Time:      [time]
//*
//* Seat Numbers:   [Generate seat numbers based on quantity]
//* Ticket Type:    [Gold/Silver/Bronze]
//* No. of Tickets: [qty]
//*
//* ------------------------------------------------
//* PRICE BREAKUP
//* ------------------------------------------------
//* Ticket Price ([qty] x [price]):        [subtotal]
//* Convenience Fee ([qty] x 30):          [fee]
//* GST (18%):                             [gst]
//* ------------------------------------------------
//* Total Amount:                  Rs. [total]
//* ------------------------------------------------
//*
//* Booking ID: BK[random number]
//* Payment Mode: [Take input: Cash/Card/UPI]
//*
//* ================================================
//*      TERMS & CONDITIONS
//* ================================================
//* *   No outside food allowed
//* *   Be seated before show starts
//* *   Ticket once booked cannot be cancelled
//*
//* ================================================
//*         ENJOY THE SHOW!
//* ================================================

import 'dart:io';
import 'dart:math';

void main() {
  stdout.write("Enter movie name: ");
  String movie = stdin.readLineSync()!;

  stdout.write("Enter show time: ");
  String time = stdin.readLineSync()!;

  stdout.write("Number of tickets: ");
  int qty = int.parse(stdin.readLineSync()!);

  stdout.write("Seat type (Gold/Silver/Bronze): ");
  String type = stdin.readLineSync()!;

  int price = type.toLowerCase() == "gold"
      ? 300
      : type.toLowerCase() == "silver"
      ? 200
      : 150;

  int subtotal = qty * price;
  double fee = qty * 30;
  double gst = (subtotal + fee) * 0.18;
  double total = subtotal + fee + gst;

  List<String> seats = [];
  for (int i = 0; i < qty; i++) {
    seats.add("A${i + 1}");
  }

  print("================================================");
  print("         CINEMA NAME - SCREEN 2");
  print("================================================");
  print("Movie:\t$movie");
  print("Language:\tHindi\tFormat: 2D");
  print("Rating: U/A\tDuration: 2h 30m");
  print("Date:\t06-Dec-2025");
  print("Show Time:\t$time");
  print("Seat Numbers:\t${seats.join(", ")}");
  print("Ticket Type:\t$type");
  print("No. of Tickets:\t$qty");
  print("------------------------------------------------");
  print("PRICE BREAKUP");
  print("------------------------------------------------");
  print("Ticket Price ($qty x $price):\t$subtotal");
  print("Convenience Fee ($qty x 30):\t$fee");
  print("GST (18%):\t$gst");
  print("------------------------------------------------");
  print("Total Amount:\tRs. $total");
  print("------------------------------------------------");
  print("Booking ID: BK${Random().nextInt(999999)}");
  stdout.write("Payment Mode (Cash/Card/UPI): ");
  String mode = stdin.readLineSync()!;
  print("Payment Mode: $mode");
  print("================================================");
  print("     TERMS & CONDITIONS");
  print("================================================");
  print("* No outside food allowed");
  print("* Be seated before show starts");
  print("* Ticket once booked cannot be cancelled");
  print("================================================");
  print("        ENJOY THE SHOW!");
  print("================================================");
}
