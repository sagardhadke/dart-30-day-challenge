//* Question 7: Clear All Tasks
//* Create a function clearAllTasks() that removes all tasks from list. Ask for confirmation before clearing. Display success message.

import 'dart:io';

void main() {
  List<String> tasks = ['Buy groceries', 'Finish homework', 'Call the plumber'];

  void clearAllTasks(List<String> tasks) {
    stdout.write('Are you sure you want to clear all tasks? (yes/no): ');
    String? response = stdin.readLineSync();

    if (response?.toLowerCase() == 'yes') {
      tasks.clear();
      print('All tasks have been cleared');
    } else {
      print('Task list not cleared');
      print("Tasks: $tasks");
    }
  }

  clearAllTasks(tasks);
}
