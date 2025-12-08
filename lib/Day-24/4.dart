//* Question 4: List Iteration
//* Create a list of 5 fruit names. Use a for loop to print each fruit with its index number. Format: "Index 0: Apple"

void main() {
  List<String> fruits = ['Apple', 'Banana', 'Cherry', 'Date', 'Elderberry'];

  for (int i = 0; i < fruits.length; i++) {
    print('Index $i: ${fruits[i]}');
  }
}
