//* Q17. Take username and password as input. Check if username == "admin" AND password == "1234". Print "Login Successful" or "Login Failed".

import 'dart:io';

void main() {
  print("Enter username:");
  String user = stdin.readLineSync()!;

  print("Enter password:");
  String pass = stdin.readLineSync()!;

  if (user == "admin" && pass == "1234") {
    print("Login Successful");
  } else {
    print("Login Failed");
  }
}
