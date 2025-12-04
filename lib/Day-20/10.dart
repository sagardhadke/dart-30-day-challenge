//* Question 10: Movie Ticket Booking
//* Take movie name, number of tickets, seat type (Gold/Silver), and show time as input. Generate formatted ticket:
//* ================================================
//*          CINEMA NAME - SCREEN 2
//* ================================================
//* 
//* Movie:          [MOVIE NAME]
//* Language:       Hindi        Format: 2D
//* Rating:         U/A          Duration: 2h 30m
//* 
//* Date:           [date]
//* Show Time:      [time]
//* 
//* Seat Numbers:   [seats]
//* Ticket Type:    [type]
//* No. of Tickets: [qty]
//* 
//* ------------------------------------------------
//* PRICE BREAKUP
//* ------------------------------------------------
//* Ticket Price ([qty] x [price]):        [subtotal]
//* Convenience Fee:                       [fee]
//* GST (18%):                             [gst]
//* ------------------------------------------------
//* Total Amount:                  Rs. [total]
//* ------------------------------------------------
//* 
//* Booking ID: [id]
//* Payment: [mode]
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

void main() {
  String movie = "Avengers";
  int qty = 3;
  String type = "Gold";
  String time = "7:30 PM";
  String date = "04-12-2025";
  List<String> seats = ["G12", "G13", "G14"];

  double price = type == "Gold" ? 250 : 150;
  double subtotal = price * qty;
  double fee = 30;
  double gst = subtotal * 0.18;
  double total = subtotal + gst + fee;

  print("================================================\n"
      "         CINEMA NAME - SCREEN 2\n"
      "================================================\n\n"
      "Movie:\t\t$movie\n"
      "Language:\tHindi\t\tFormat: 2D\n"
      "Rating:\t\tU/A\t\tDuration: 2h 30m\n\n"
      "Date:\t\t$date\n"
      "Show Time:\t$time\n\n"
      "Seat Numbers:\t${seats.join(", ")}\n"
      "Ticket Type:\t$type\n"
      "No. of Tickets:\t$qty\n\n"
      "------------------------------------------------\n"
      "PRICE BREAKUP\n"
      "------------------------------------------------\n"
      "Ticket Price ($qty x $price):\t\t$subtotal\n"
      "Convenience Fee:\t\t\t$fee\n"
      "GST (18%):\t\t\t\t$gst\n"
      "------------------------------------------------\n"
      "Total Amount:\t\tRs. $total\n"
      "------------------------------------------------\n\n"
      "Booking ID: B12345\n"
      "Payment: UPI\n\n"
      "================================================\n"
      "     TERMS & CONDITIONS\n"
      "================================================\n"
      "*   No outside food allowed\n"
      "*   Be seated before show starts\n"
      "*   Ticket once booked cannot be cancelled\n\n"
      "================================================\n"
      "        ENJOY THE SHOW!\n"
      "================================================");
}
