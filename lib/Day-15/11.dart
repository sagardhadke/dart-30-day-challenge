//* Q11. Login Prompt: Use stdout.write() for "Username: " and "Password: " prompts (user types next to prompt). Take inputs and use print() to show "Login Successful" message.

import 'dart:io';

void main() {
  stdout.write("Username: ");
  String user = stdin.readLineSync()!;

  stdout.write("Password: ");
  String pass = stdin.readLineSync()!;

  print("User: $user and pass: $pass Successful");
}
