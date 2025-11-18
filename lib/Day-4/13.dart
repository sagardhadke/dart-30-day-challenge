//* 13. Use .fold() to compute the product of [2,3,4].

void main() {
  List<int> nums = [2, 3, 4];
  int sum = 0;
  sum = nums.fold(1, (previousValue, element) {
    return previousValue * element;
  });
  print(sum);
}
