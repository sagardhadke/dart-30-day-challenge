//* Question 13: Login System with Attempts
//* Create login system with:
//* - Username and password stored in map (3 users)
//* - Maximum 3 attempts using for loop with break
//* - Use if-else to validate credentials
//* - Use continue to skip empty inputs
//* - Lock account after 3 failed attempts
//* - Display formatted messages with escape sequences
//*
//* After successful login, show user menu with profile options using switch case.

import 'dart:io';

Map<String, String> users = {
  "user1": "pass1",
  "user2": "pass2",
  "user3": "pass3",
};

bool loginSystem() {
  const int maxAttempts = 3;
  int attempts = 0;

  while (attempts < maxAttempts) {
    stdout.write("Enter Username: ");
    String username = stdin.readLineSync()!.trim();
    if (username.isEmpty) {
      print("Username cannot be empty.");
      continue;
    }

    stdout.write("Enter Password: ");
    String password = stdin.readLineSync()!.trim();
    if (password.isEmpty) {
      print("Password cannot be empty.");
      continue;
    }

    if (users.containsKey(username) && users[username] == password) {
      print("\nLogin Successful! Welcome, $username\n");
      return true;
    } else {
      attempts++;
      print("Invalid credentials! Attempt $attempts/$maxAttempts\n");
    }
  }

  print("Account locked due to 3 failed attempts.");
  return false;
}

void userMenu(String username) {
  bool run = true;

  while (run) {
    print("===== USER MENU =====");
    print("1. View Profile");
    print("2. Change Password");
    print("3. Logout");
    stdout.write("Choose option: ");

    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        print("\n--- PROFILE ---");
        print("Username: $username");
        print("Password: ${users[username]}");
        print("----------------\n");
        break;

      case 2:
        stdout.write("Enter new password: ");
        String newPass = stdin.readLineSync()!.trim();
        if (newPass.isEmpty) {
          print("Password cannot be empty!\n");
          continue;
        }
        users[username] = newPass;
        print("Password updated successfully!\n");
        break;

      case 3:
        run = false;
        print("\nLogged out successfully!\n");
        break;

      default:
        print("Invalid choice!\n");
    }
  }
}

void main() {
  print("===== LOGIN SYSTEM =====\n");

  bool loggedIn = loginSystem();

  if (loggedIn) {
    stdout.write("Enter your username to continue: ");
    String username = stdin.readLineSync()!.trim();
    userMenu(username);
  }

  print("Exiting system. Goodbye!");
}
