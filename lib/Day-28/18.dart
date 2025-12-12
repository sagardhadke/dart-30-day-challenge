//* Question 18: Recursive List Operations
//* Create recursive functions for list operations:
//* - findMax(list, index) - finds maximum element in list
//* - findMin(list, index) - finds minimum element in list
//* - countOccurrences(list, element, index) - counts how many times element appears
//* - reverseList(list, start, end) - reverses list recursively
//*
//* Test all functions with list: [45, 23, 67, 12, 89, 23, 56, 23, 90, 12]

int findMax(List<int> arr, int index) {
  if (index == arr.length - 1) return arr[index];
  return arr[index] > findMax(arr, index + 1)
      ? arr[index]
      : findMax(arr, index + 1);
}

int findMin(List<int> arr, int index) {
  if (index == arr.length - 1) return arr[index];
  return arr[index] < findMin(arr, index + 1)
      ? arr[index]
      : findMin(arr, index + 1);
}

int countOccurrences(List<int> arr, int element, int index) {
  if (index == arr.length) return 0;
  int count = arr[index] == element ? 1 : 0;
  return count + countOccurrences(arr, element, index + 1);
}

void reverseList(List<int> arr, int start, int end) {
  if (start >= end) return;
  int temp = arr[start];
  arr[start] = arr[end];
  arr[end] = temp;
  reverseList(arr, start + 1, end - 1);
}

void main() {
  List<int> list = [45, 23, 67, 12, 89, 23, 56, 23, 90, 12];

  print("Max: ${findMax(list, 0)}");
  print("Min: ${findMin(list, 0)}");
  print("Occurrences of 23: ${countOccurrences(list, 23, 0)}");

  reverseList(list, 0, list.length - 1);
  print("Reversed: $list");
}
