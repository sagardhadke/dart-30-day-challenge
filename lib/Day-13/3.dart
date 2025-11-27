//* Question 3: Age Category Finder
//* age = 35. Use ternary operator to categorize: age < 13 = 'Child', age < 20 = 'Teenager', age < 60 = 'Adult', else = 'Senior'. Print the category. Try with different ages.

void main() {
  int age = 35;
  String category = (age < 13)
      ? 'Child'
      : (age < 20)
      ? 'Teenager'
      : (age < 60)
      ? 'Adult'
      : 'Senior';

  print("Category: $category");
}
