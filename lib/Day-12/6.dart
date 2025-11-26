//* Question 6: Contact Manager
//* Create a map with 6 contacts (name: phone number). Create a list of 3 names you want to call. For each name in the list, check if it exists in contacts using logical operators. Print phone numbers for existing contacts and "Not Found" for others.

void main() {
  Map<String, String> contacts = {
    "Ali": "03001111111",
    "Sara": "03002222222",
    "John": "03003333333",
    "Ayesha": "03004444444",
    "Ahmed": "03005555555",
    "Rita": "03006666666"
  };

  List<String> toCall = ["Ali", "Rita", "Michael"];

  for (var name in toCall) {
    if (contacts.containsKey(name)) {
      print("$name → ${contacts[name]}");
    } else {
      print("$name → Not Found");
    }
  }
}
