//* Question 2: Phone Directory Create a map of 5 friends with their phone numbers. Print all names (keys). Print all phone numbers (values). Check if 'Rahul' exists in your contacts. Add a new contact and print the updated directory.

void main() {
  Map<String, String> phoneDirectory = {
    'Alice': '1234567890',
    'Bob': '0987654321',
    'Charlie': '1122334455',
    'David': '2233445566',
    'Eva': '3344556677',
  };

  print("Contact Names: ${phoneDirectory.keys}");

  print("Phone Numbers: ${phoneDirectory.values}");

  if (phoneDirectory.containsKey('Rahul')) {
    print("Rahul is in the contact list.");
  } else {
    print("Rahul is not in the contact list.");
  }

  phoneDirectory['Rahul'] = '9988776655';
  print("Updated Directory: $phoneDirectory");
}
