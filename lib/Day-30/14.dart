//* Question 14: Task Priority Manager
//* Create task list with maps containing: id, title, priority (High/Medium/Low), status (Pending/Complete).
//* Functions:
//* - addTask() - with named parameters
//* - updatePriority() - changes priority
//* - markComplete() - changes status
//* - filterByPriority(priority) - uses for loop with if condition
//* - displayTasks() - uses forEach with anonymous function
//*
//* Implement menu system. Use break and continue appropriately. Sort tasks: High first using nested if-else in loop.

import 'dart:io';

List<Map<String, dynamic>> tasks = [
  {"id": 1, "title": "Task 1", "priority": "High", "status": "Pending"},
  {"id": 2, "title": "Task 2", "priority": "Medium", "status": "Pending"},
  {"id": 3, "title": "Task 3", "priority": "Low", "status": "Complete"},
];

void addTask({required String title, required String priority}) {
  int id = tasks.isEmpty ? 1 : tasks.last['id'] + 1;
  tasks.add({
    "id": id,
    "title": title,
    "priority": priority,
    "status": "Pending",
  });
  print("\nTask Added Successfully!\n");
}

void updatePriority(int id, String newPriority) {
  bool found = false;
  for (var task in tasks) {
    if (task['id'] == id) {
      task['priority'] = newPriority;
      found = true;
      print("\nPriority Updated!\n");
      break;
    }
  }
  if (!found) print("\nTask Not Found!\n");
}

void markComplete(int id) {
  bool found = false;
  for (var task in tasks) {
    if (task['id'] == id) {
      task['status'] = "Complete";
      found = true;
      print("\nTask Marked Complete!\n");
      break;
    }
  }
  if (!found) print("\nTask Not Found!\n");
}

void filterByPriority(String priority) {
  print("\n--- Tasks with Priority: $priority ---");
  for (var task in tasks) {
    if (task['priority'] == priority) {
      print(
        "ID: ${task['id']} | Title: ${task['title']} | Status: ${task['status']}",
      );
    }
  }
  print("-------------------------------------\n");
}

void displayTasks() {
  tasks.forEach((task) {
    print(
      "ID: ${task['id']} | Title: ${task['title']} | Priority: ${task['priority']} | Status: ${task['status']}",
    );
  });
  print("");
}

void sortTasks() {
  tasks.sort((a, b) {
    List<String> order = ["High", "Medium", "Low"];
    return order.indexOf(a['priority']).compareTo(order.indexOf(b['priority']));
  });
  print("\nTasks Sorted by Priority (High to Low)\n");
}

void main() {
  bool run = true;

  while (run) {
    print("\n====== TASK PRIORITY MANAGER ======");
    print("1. Add Task");
    print("2. Update Task Priority");
    print("3. Mark Task Complete");
    print("4. Filter by Priority");
    print("5. Display All Tasks");
    print("6. Sort Tasks by Priority");
    print("7. Exit");
    stdout.write("Choose option: ");

    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        stdout.write("Enter Task Title: ");
        String title = stdin.readLineSync()!;
        stdout.write("Enter Priority (High/Medium/Low): ");
        String priority = stdin.readLineSync()!;
        addTask(title: title, priority: priority);
        break;

      case 2:
        stdout.write("Enter Task ID to update: ");
        int id = int.parse(stdin.readLineSync()!);
        stdout.write("Enter New Priority (High/Medium/Low): ");
        String newPriority = stdin.readLineSync()!;
        updatePriority(id, newPriority);
        break;

      case 3:
        stdout.write("Enter Task ID to mark complete: ");
        int idComplete = int.parse(stdin.readLineSync()!);
        markComplete(idComplete);
        break;

      case 4:
        stdout.write("Enter Priority to filter (High/Medium/Low): ");
        String filter = stdin.readLineSync()!;
        filterByPriority(filter);
        break;

      case 5:
        print("\n--- ALL TASKS ---");
        displayTasks();
        break;

      case 6:
        sortTasks();
        break;

      case 7:
        run = false;
        print("\nExiting Task Manager");
        break;

      default:
        print("\nInvalid Choice!\n");
    }
  }
}
