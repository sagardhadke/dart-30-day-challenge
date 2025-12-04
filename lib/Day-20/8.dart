//* Question 8: Complete Bill Generator
//* Take restaurant name, 3 items with prices and quantities as input. Generate professional bill using all escape sequences:
//* ================================================
//*         [RESTAURANT NAME]
//*         123 Main Street
//* ================================================
//*
//* DATE: [date]              BILL NO: [number]
//*
//* ================================================
//* ITEM                QTY    PRICE      AMOUNT
//* ------------------------------------------------
//* [Item1]             [q]    [p]        [amt]
//* [Item2]             [q]    [p]        [amt]
//* [Item3]             [q]    [p]        [amt]
//* ------------------------------------------------
//*                     SUBTOTAL:         [subtotal]
//*                     GST (5%):         [gst]
//*                     Service (10%):    [service]
//* ================================================
//*                     GRAND TOTAL:      [total]
//* ================================================
//*
//*         THANK YOU! VISIT AGAIN!
//* ================================================

void main() {
  String rest = "THE FOOD PLACE";
  String date = "04-12-2025";
  int billNo = 101;

  String item1 = "Pizza";
  int q1 = 2;
  double p1 = 250;

  String item2 = "Pasta";
  int q2 = 1;
  double p2 = 180;

  String item3 = "Coke";
  int q3 = 3;
  double p3 = 50;

  double amt1 = q1 * p1;
  double amt2 = q2 * p2;
  double amt3 = q3 * p3;

  double subtotal = amt1 + amt2 + amt3;
  double gst = subtotal * 0.05;
  double service = subtotal * 0.10;
  double total = subtotal + gst + service;

  print(
    "================================================\n"
    "                $rest\n"
    "                123 Main Street\n"
    "================================================\n\n"
    "DATE: $date\t\tBILL NO: $billNo\n\n"
    "================================================\n"
    "ITEM\t\tQTY\tPRICE\tAMOUNT\n"
    "------------------------------------------------\n"
    "$item1\t\t$q1\t$p1\t$amt1\n"
    "$item2\t\t$q2\t$p2\t$amt2\n"
    "$item3\t\t$q3\t$p3\t$amt3\n"
    "------------------------------------------------\n"
    "\t\t\tSUBTOTAL:\t$subtotal\n"
    "\t\t\tGST (5%):\t$gst\n"
    "\t\t\tService (10%):\t$service\n"
    "================================================\n"
    "\t\t\tGRAND TOTAL:\t$total\n"
    "================================================\n\n"
    "        THANK YOU! VISIT AGAIN!\n"
    "================================================",
  );
}
