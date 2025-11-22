//* Q2: OR Operator (||) Practice:
//* Create: isWeekend = true, isHoliday = false
//* Check: isWeekend || isHoliday (true if either is true)
//* Print result
//* Try with both false, then both true

void main() {
  bool isWeekend = true;
  bool isHoliday = false;

  print(isWeekend || isHoliday);
  isHoliday = false;
  isWeekend = false;
  print(isWeekend || isHoliday);
  isHoliday = true;
  isWeekend = true;
  print(isWeekend || isHoliday);
  isHoliday = false;
  isWeekend = true;
  print(isWeekend || isHoliday);
}
