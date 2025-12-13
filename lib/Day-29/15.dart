//* Question 15: Complete Task Manager with Menu
//* Create a comprehensive task manager with menu:
//* 1. Add Task
//* 2. View All Tasks
//* 3. Update Task
//* 4. Delete Task
//* 5. Mark as Complete
//* 6. Search Task
//* 7. Filter by Status
//* 8. Filter by Priority
//* 9. View Statistics
//* 10. Exit
//*
//* Use switch case for menu. Use while loop to keep showing menu until exit. Implement all functions with proper error handling.
//*
//* Each task should have:
//* - Unique ID (auto-increment)
//* - Description
//* - Status (Pending/Completed)
//* - Priority (High/Medium/Low)
//* - Created Date (you can use string for now)

import 'dart:io';

int autoId = 1;
List<Map<String, dynamic>> tasks = [];

void addTask() {
  stdout.write('Enter description: ');
  String desc = stdin.readLineSync()!;
  stdout.write('Enter priority (High/Medium/Low): ');
  String priority = stdin.readLineSync()!;

  tasks.add({
    'id': autoId++,
    'description': desc,
    'status': 'Pending',
    'priority': priority,
    'createdDate': DateTime.now().toString(),
  });

  print('Task added successfully');
}

void viewTasks() {
  if (tasks.isEmpty) {
    print('No tasks available');
    return;
  }
  for (var t in tasks) {
    print(t);
  }
}

void deleteTask() {
  stdout.write('Enter task ID: ');
  int id = int.parse(stdin.readLineSync()!);

  tasks.removeWhere((t) => t['id'] == id);
  print('Task deleted');
}

void menu() {
  while (true) {
    print('''
1. Add Task
2. View Tasks
3. Delete Task
4. Exit
''');
    stdout.write('Choose: ');
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        addTask();
        break;
      case 2:
        viewTasks();
        break;
      case 3:
        deleteTask();
        break;
      case 4:
        exit(0);
      default:
        print('Invalid choice');
    }
  }
}

void main() {
  menu();
}
