//* Question 11: Array Sum Recursion
//* Create a recursive function sumArray() that takes a list and index, returns sum of all elements from that index to end. Example: sumArray([1,2,3,4,5], 0) = 15.

int sumArray(List<int> arr, int index) {
  if (index == arr.length) return 0;
  return arr[index] + sumArray(arr, index + 1);
}

void main() {
  print(sumArray([1, 2, 3, 4, 5], 0));
}
