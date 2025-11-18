//* 18. Remove all odd numbers from List<int> nums = [1,2,3,4,5,6] using removeWhere().

void main() {
  List<int> nums = [1, 2, 3, 4, 5, 6];

  nums.removeWhere((e) => e % 2 != 0);

  print(nums);
}
