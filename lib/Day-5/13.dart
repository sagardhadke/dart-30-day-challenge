//* Q13. Remove duplicates from [1,2,2,3,4,4,5] without using Set.

void main() {
  List<int> nums = [1, 2, 2, 3, 4, 4, 5];

  List<int> newList = [];

  for (int i = 0; i <= nums.length - 1; i++) {
    if (!newList.contains(nums[i])) {
      newList.add(nums[i]);
    }
  }
  print("Updated List $newList");
}
