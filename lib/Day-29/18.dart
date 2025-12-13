//* Question 18: Task Manager with Due Dates
//* Enhance task structure to include:
//* - id
//* - description
//* - status
//* - priority
//* - dueDate (string format: "DD-MM-YYYY")
//* - createdDate
//*
//* Create functions:
//* - addTaskWithDueDate() - adds task with due date
//* - displayOverdueTasks() - shows tasks with past due dates (compare with current date "06-12-2025")
//* - displayUpcomingTasks() - shows tasks due in next 7 days
//* - sortByDueDate() - arranges tasks by due date (earliest first)
//* - extendDueDate() - allows changing due date of a task
//*
//* Implement complete system with menu.

import 'dart:io';

int autoId = 1;
List<Map<String, dynamic>> tasks = [];

DateTime currentDate = DateTime(2025, 12, 13);

DateTime parseDate(String date) {
  List<String> parts = date.split('-');
  return DateTime(
    int.parse(parts[2]),
    int.parse(parts[1]),
    int.parse(parts[0]),
  );
}

void addTaskWithDueDate() {
  stdout.write('Enter description: ');
  String desc = stdin.readLineSync()!;

  stdout.write('Enter priority (High/Medium/Low): ');
  String priority = stdin.readLineSync()!;

  stdout.write('Enter due date (DD-MM-YYYY): ');
  String dueDate = stdin.readLineSync()!;

  tasks.add({
    'id': autoId++,
    'description': desc,
    'status': 'Pending',
    'priority': priority,
    'dueDate': dueDate,
    'createdDate': currentDate.toString(),
  });

  print('Task added successfully');
}

void displayOverdueTasks() {
  print('--- Overdue Tasks ---');
  bool found = false;

  for (var task in tasks) {
    if (parseDate(task['dueDate']).isBefore(currentDate)) {
      print(task);
      found = true;
    }
  }

  if (!found) {
    print('No overdue tasks');
  }
}

void displayUpcomingTasks() {
  print('--- Upcoming Tasks (Next 7 Days) ---');
  bool found = false;

  for (var task in tasks) {
    DateTime due = parseDate(task['dueDate']);
    if (due.isAfter(currentDate) &&
        due.isBefore(currentDate.add(Duration(days: 7)))) {
      print(task);
      found = true;
    }
  }

  if (!found) {
    print('No upcoming tasks');
  }
}

void sortByDueDate() {
  tasks.sort(
    (a, b) => parseDate(a['dueDate']).compareTo(parseDate(b['dueDate'])),
  );

  print('Tasks sorted by due date');
}

void extendDueDate() {
  stdout.write('Enter task ID: ');
  int id = int.parse(stdin.readLineSync()!);

  stdout.write('Enter new due date (DD-MM-YYYY): ');
  String newDate = stdin.readLineSync()!;

  for (var task in tasks) {
    if (task['id'] == id) {
      task['dueDate'] = newDate;
      print('Due date updated');
      return;
    }
  }

  print('Task not found');
}

void displayTasks() {
  if (tasks.isEmpty) {
    print('No tasks available');
    return;
  }

  for (var task in tasks) {
    print(
      'ID:${task['id']} | ${task['description']} | Due:${task['dueDate']} | ${task['priority']} | ${task['status']}',
    );
  }
}

void main() {
  while (true) {
    print('''
--- TASK MANAGER WITH DUE DATES ---
1. Add Task
2. View All Tasks
3. View Overdue Tasks
4. View Upcoming Tasks
5. Sort by Due Date
6. Extend Due Date
7. Exit
''');

    stdout.write('Choose option: ');
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        addTaskWithDueDate();
        break;
      case 2:
        displayTasks();
        break;
      case 3:
        displayOverdueTasks();
        break;
      case 4:
        displayUpcomingTasks();
        break;
      case 5:
        sortByDueDate();
        break;
      case 6:
        extendDueDate();
        break;
      case 7:
        exit(0);
      default:
        print('Invalid choice');
    }
  }
}
