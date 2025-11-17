//* Q8. Frequency Counter (Important)

//* Given a list: ['apple', 'banana', 'apple', 'orange', 'banana', 'apple']
//* Use a map to count how many times each fruit appears.

void main() {
  List<String> fruits = [
    'apple',
    'banana',
    'apple',
    'orange',
    'banana',
    'apple',
  ];
  Map<String, int> newFruitsCount = {};

  for (int i = 0; i <= fruits.length - 1; i++) {
    if (newFruitsCount.containsKey(fruits[i])) {
      newFruitsCount[fruits[i]] = newFruitsCount[fruits[i]]! + 1;
    } else {
      newFruitsCount[fruits[i]] = 1;
    }
  }
  print(newFruitsCount);
}
