//* Question 7: Conversation Format
//* Take two speakers' names and their dialogues as input. Format using \" and \n:
//* [Speaker1]: "What time is it?"
//* [Speaker2]: "It's 3 PM."
//* [Speaker1]: "Thank you!"

void main() {
  String s1 = "Alice";
  String s2 = "Bob";

  print(
    "$s1: \"What time is it?\"\n"
    "$s2: \"It's 3 PM.\"\n"
    "$s1: \"Thank you!\"",
  );
}
