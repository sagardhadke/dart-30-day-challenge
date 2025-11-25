//* Question 3: Restaurant Table Booking
//* Create a map of table numbers and their capacities (2, 4, 6, 8 seaters). You have 7 booking requests with different party sizes stored in a list. Allocate smallest suitable table for each party. If no table available, mark as "Waiting". If party size > largest table, suggest splitting. Print allocation report.

void main() {
  Map<int, int> tables = {1: 2, 2: 4, 3: 4, 4: 6, 5: 6, 6: 8, 7: 8};
  List<int> requests = [2, 5, 7, 3, 10, 6, 4];

  Set<int> bookedTables = {};

  for (int people in requests) {
    int? allocated;

    if (people > 8) {
      print("Party $people → Too large! Suggest split.");
      continue;
    }

    tables.forEach((tNo, cap) {
      if (!bookedTables.contains(tNo) &&
          cap >= people &&
          (allocated == null || cap < tables[allocated]!)) {
        allocated = tNo;
      }
    });

    if (allocated == null) {
      print("Party $people → Waiting");
    } else {
      bookedTables.add(allocated!);
      print("Party $people → Table $allocated allocated");
    }
  }
}
