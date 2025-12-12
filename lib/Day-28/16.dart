//* Question 16: Binary Search Recursion
//* Create a recursive function binarySearch() that searches for an element in a sorted list. Function takes list, element to search, start index, and end index. Return index if found, -1 if not found. Test with sorted list [2,5,8,12,16,23,38,45,50,67] searching for 23 and 100.

int binarySearch(List<int> arr, int target, int start, int end) {
  if (start > end) return -1;

  int mid = (start + end) ~/ 2;

  if (arr[mid] == target) return mid;
  if (target < arr[mid]) {
    return binarySearch(arr, target, start, mid - 1);
  } else {
    return binarySearch(arr, target, mid + 1, end);
  }
}

void main() {
  List<int> nums = [2, 5, 8, 12, 16, 23, 38, 45, 50, 67];
  print(binarySearch(nums, 23, 0, nums.length - 1));
  print(binarySearch(nums, 100, 0, nums.length - 1));
}
