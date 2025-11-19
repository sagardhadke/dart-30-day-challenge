//* Q5. Create a map with 3 contacts (name → phone).
// Print the phone number of the second contact.

void main(){

  Map<String,dynamic> contacts = {
    "A" : 123,
    "B" : 456,
    "C" : 789
  };
  print(contacts['B']);

}