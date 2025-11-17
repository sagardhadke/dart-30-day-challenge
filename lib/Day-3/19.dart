//* Create a map: {'a': 100, 'b': 200, 'c': 300}. Try to access a key 'd' that doesn't exist. What value do you get?

void main() {
  Map<String, dynamic> nums = {'a': 100, 'b': 200, 'c': 300};
  print(nums['d']); //null
}
