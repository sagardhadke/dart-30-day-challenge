//* Question 16: Task Manager with Validation
//* Enhance task manager with validation functions:
//* - validateTaskDescription() - description should not be empty, minimum 5 characters
//* - validatePriority() - only accept High/Medium/Low
//* - validateTaskId() - check if task id exists before operations
//* - validateStatus() - only accept Pending/Completed
//*
//* Add these validations to all CRUD operations. Display appropriate error messages for invalid inputs.

import 'dart:io';

int autoId = 1;
List<Map<String, dynamic>> tasks = [];

bool validateTaskDescription(String desc) {
  if (desc.trim().isEmpty || desc.length < 5) {
    print('Error: Description must be at least 5 characters long');
    return false;
  }
  return true;
}

bool validatePriority(String priority) {
  if (!['High', 'Medium', 'Low'].contains(priority)) {
    print('Error: Priority must be High, Medium, or Low');
    return false;
  }
  return true;
}

bool validateStatus(String status) {
  if (!['Pending', 'Completed'].contains(status)) {
    print('Error: Status must be Pending or Completed');
    return false;
  }
  return true;
}

bool validateTaskId(int id) {
  if (!tasks.any((task) => task['id'] == id)) {
    print('Error: Task ID not found');
    return false;
  }
  return true;
}

void addTask() {
  stdout.write('Enter task description: ');
  String desc = stdin.readLineSync()!;

  if (!validateTaskDescription(desc)) return;

  stdout.write('Enter priority (High/Medium/Low): ');
  String priority = stdin.readLineSync()!;

  if (!validatePriority(priority)) return;

  tasks.add({
    'id': autoId++,
    'description': desc,
    'status': 'Pending',
    'priority': priority,
    'createdDate': DateTime.now().toString(),
  });

  print('Task added successfully');
}

void updateTask() {
  stdout.write('Enter task ID: ');
  int id = int.parse(stdin.readLineSync()!);

  if (!validateTaskId(id)) return;

  stdout.write('Enter new description: ');
  String desc = stdin.readLineSync()!;

  if (!validateTaskDescription(desc)) return;

  for (var task in tasks) {
    if (task['id'] == id) {
      task['description'] = desc;
      print('Task updated successfully');
      break;
    }
  }
}

void markTaskComplete() {
  stdout.write('Enter task ID: ');
  int id = int.parse(stdin.readLineSync()!);

  if (!validateTaskId(id)) return;

  for (var task in tasks) {
    if (task['id'] == id) {
      task['status'] = 'Completed';
      print('Task marked as Completed');
      break;
    }
  }
}

void deleteTask() {
  stdout.write('Enter task ID: ');
  int id = int.parse(stdin.readLineSync()!);

  if (!validateTaskId(id)) return;

  tasks.removeWhere((task) => task['id'] == id);
  print('Task deleted successfully');
}

void displayTasks() {
  if (tasks.isEmpty) {
    print('No tasks available');
    return;
  }

  for (var task in tasks) {
    print(
      'ID: ${task['id']} | ${task['description']} | ${task['status']} | ${task['priority']}',
    );
  }
}

void main() {
  while (true) {
    print('''
--- TASK MANAGER (Validation Enabled) ---
1. Add Task
2. View Tasks
3. Update Task
4. Mark Task Complete
5. Delete Task
6. Exit
''');

    stdout.write('Choose option: ');
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        addTask();
        break;
      case 2:
        displayTasks();
        break;
      case 3:
        updateTask();
        break;
      case 4:
        markTaskComplete();
        break;
      case 5:
        deleteTask();
        break;
      case 6:
        exit(0);
      default:
        print('Invalid choice');
    }
  }
}
