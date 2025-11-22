//* Q25. Working Hours Validator:
//* day = 'Saturday', time = 14 (24-hour format), isHoliday = false
//* Shop open: Monday-Friday (9-18) OR Saturday (9-14), NOT on holidays
//* Check: !isHoliday && ((day != 'Saturday' && day != 'Sunday' && time >= 9 && time <= 18) || (day == 'Saturday' && time >= 9 && time <= 14))
//* Print: 'Shop Open' or 'Shop Closed'

void main() {
  String day = 'Saturday';
  int time = 14;
  bool isHoliday = false;

  print(
    !isHoliday &&
            ((day != "Saturday" &&
                    day != "Sunday" &&
                    time >= 9 &&
                    time <= 18) ||
                (day == "Saturday" && time >= 9 && time <= 14))
        ? "Shop Open"
        : "Shop Closed",
  );
}
