//* Question 6: List Operations Combined
//* Create a list of 10 numbers. Create functions: findMax(), findMin(), calculateSum(), calculateAverage(). Use for loop inside functions. Display all results. Use continue to skip negative numbers while processing.

int findMax(List<int> nums) {
  int max = nums[0];
  for (var n in nums) {
    if (n < 0) continue;
    if (n > max) max = n;
  }
  return max;
}

int findMin(List<int> nums) {
  int min = nums[0];
  for (var n in nums) {
    if (n < 0) continue;
    if (n < min) min = n;
  }
  return min;
}

int calculateSum(List<int> nums) {
  int sum = 0;
  for (var n in nums) {
    if (n < 0) continue;
    sum += n;
  }
  return sum;
}

double calculateAverage(List<int> nums) {
  int sum = 0, count = 0;
  for (var n in nums) {
    if (n < 0) continue;
    sum += n;
    count++;
  }
  return sum / count;
}

void main() {
  List<int> numbers = [5, 3, -2, 9, 1, 7, 4, -1, 6, 8];

  print("Max: ${findMax(numbers)}");
  print("Min: ${findMin(numbers)}");
  print("Sum: ${calculateSum(numbers)}");
  print("Average: ${calculateAverage(numbers)}");
}
