//* Question 20: Advanced Task Manager - Complete CRUD System
//* Create a professional task management system with all features:
//*
//* Task Structure:
//* - id (auto-increment)
//* - title
//* - description
//* - status (Pending/In Progress/Completed/Cancelled)
//* - priority (High/Medium/Low)
//* - category (Personal/Work/Shopping/Health/Education)
//* - dueDate
//* - createdDate
//* - lastModifiedDate
//* - tags (list of strings for labeling)
//* - notes (additional notes)
//*
//* CRUD Operations:
//* CREATE:
//* - addTask() - with all details
//* - duplicateTask() - creates copy of existing task with new id
//*
//* READ:
//* - displayAllTasks() - formatted table view
//* - displayTaskDetails() - detailed view of single task
//* - searchTasks() - search by title, description, tags
//* - filterTasks() - multiple filter options (status, priority, category, date range)
//*
//* UPDATE:
//* - updateTaskField() - update any field of task
//* - changeStatus() - change task status
//* - changePriority() - change priority
//* - addTag() - add new tag to task
//* - removeTag() - remove tag from task
//* - addNote() - append note to task
//*
//* DELETE:
//* - deleteTask() - remove task (ask confirmation)
//* - deleteCompletedTasks() - bulk delete all completed
//* - deleteCancelledTasks() - bulk delete all cancelled
//*
//* ADVANCED FEATURES:
//* - sortTasks() - sort by priority, due date, created date, status
//* - displayStatistics() - comprehensive statistics:
//*   * Total tasks
//*   * Status-wise count
//*   * Priority-wise count
//*   * Category-wise count
//*   * Completion rate
//*   * Overdue tasks count
//* - exportTasks() - display all tasks in copy-paste friendly format
//* - archiveTasks() - move completed tasks to archive list
//* - restoreFromArchive() - restore archived tasks
//*
//* MENU SYSTEM:
//* Main Menu:
//* 1. Task Operations (Add, View, Update, Delete)
//* 2. Search & Filter
//* 3. Status Management
//* 4. Priority Management
//* 5. Category Management
//* 6. Statistics & Reports
//* 7. Archive Management
//* 8. Settings
//* 9. Exit
//*
//* Use nested menus with switch case.
//* Implement data validation for all inputs.
//* Use functions for each operation.
//* Add proper error handling.
//* Use loops (for, while) appropriately.
//* Use maps and lists effectively.
//* Implement recursion where suitable (like searching in nested categories).
//* Use anonymous functions for filtering and sorting.
//*
//* Additional Requirements:
//* - Display formatted output with proper alignment
//* - Show success/error messages for each operation
//* - Ask confirmation for delete operations
//* - Provide option to undo last action (store last deleted task)
//* - Show loading indicators using loops
//* - Color code priorities in display (use text labels: [HIGH], [MED], [LOW])
//* - Calculate and show productivity metrics
//*
//* Test the complete system with:
//* - Adding 10 tasks with different attributes
//* - Performing all CRUD operations
//* - Using all filter and search options
//* - Generating statistics
//* - Testing edge cases (empty lists, invalid inputs, etc.)

import 'dart:io';

int _autoId = 1;
List<Map<String, dynamic>> tasks = [];
List<Map<String, dynamic>> archive = [];
Map<String, dynamic>? lastDeleted;

bool validStatus(String s) =>
    ['Pending', 'In Progress', 'Completed', 'Cancelled'].contains(s);

bool validPriority(String p) => ['High', 'Medium', 'Low'].contains(p);

bool validCategory(String c) =>
    ['Personal', 'Work', 'Shopping', 'Health', 'Education'].contains(c);

Map<String, int> priorityOrder = {'High': 1, 'Medium': 2, 'Low': 3};

void loading([String msg = 'Processing']) {
  stdout.write(msg);
  for (int i = 0; i < 3; i++) {
    sleep(Duration(milliseconds: 300));
    stdout.write('.');
  }
  print('');
}

String priorityLabel(String p) => p == 'High'
    ? '[HIGH]'
    : p == 'Medium'
    ? '[MED]'
    : '[LOW]';

void addTask() {
  stdout.write('Title: ');
  String title = stdin.readLineSync()!;

  stdout.write('Description: ');
  String desc = stdin.readLineSync()!;

  stdout.write('Status: ');
  String status = stdin.readLineSync()!;
  if (!validStatus(status)) return;

  stdout.write('Priority: ');
  String priority = stdin.readLineSync()!;
  if (!validPriority(priority)) return;

  stdout.write('Category: ');
  String category = stdin.readLineSync()!;
  if (!validCategory(category)) return;

  stdout.write('Due Date (DD-MM-YYYY): ');
  String dueDate = stdin.readLineSync()!;

  tasks.add({
    'id': _autoId++,
    'title': title,
    'description': desc,
    'status': status,
    'priority': priority,
    'category': category,
    'dueDate': dueDate,
    'createdDate': DateTime.now().toString(),
    'lastModifiedDate': DateTime.now().toString(),
    'tags': <String>[],
    'notes': '',
  });

  loading();
  print('✅ Task added successfully');
}

void duplicateTask() {
  stdout.write('Task ID to duplicate: ');
  int id = int.parse(stdin.readLineSync()!);

  var task = tasks.firstWhere((t) => t['id'] == id, orElse: () => {});
  if (task.isEmpty) return;

  var copy = Map<String, dynamic>.from(task);
  copy['id'] = _autoId++;
  copy['createdDate'] = DateTime.now().toString();
  tasks.add(copy);

  print('✅ Task duplicated');
}

void displayAllTasks() {
  if (tasks.isEmpty) {
    print('No tasks available');
    return;
  }

  print('\nID | TITLE | STATUS | PRIORITY | CATEGORY | DUE');
  print('-' * 60);
  for (var t in tasks) {
    print(
      '${t['id']} | ${t['title']} | ${t['status']} | ${priorityLabel(t['priority'])} | ${t['category']} | ${t['dueDate']}',
    );
  }
}

void displayTaskDetails() {
  stdout.write('Task ID: ');
  int id = int.parse(stdin.readLineSync()!);

  var t = tasks.firstWhere((e) => e['id'] == id, orElse: () => {});
  if (t.isEmpty) return;

  print('\n$t');
}

void searchTasks() {
  stdout.write('Keyword: ');
  String k = stdin.readLineSync()!.toLowerCase();

  tasks
      .where(
        (t) =>
            t['title'].toLowerCase().contains(k) ||
            t['description'].toLowerCase().contains(k) ||
            t['tags'].any((tag) => tag.toLowerCase().contains(k)),
      )
      .forEach(print);
}

void filterTasks() {
  stdout.write('Filter by status (or enter): ');
  String s = stdin.readLineSync()!;

  stdout.write('Filter by priority (or enter): ');
  String p = stdin.readLineSync()!;

  stdout.write('Filter by category (or enter): ');
  String c = stdin.readLineSync()!;

  var filtered = tasks.where(
    (t) =>
        (s.isEmpty || t['status'] == s) &&
        (p.isEmpty || t['priority'] == p) &&
        (c.isEmpty || t['category'] == c),
  );

  filtered.forEach(print);
}

void updateTaskField() {
  stdout.write('Task ID: ');
  int id = int.parse(stdin.readLineSync()!);

  stdout.write('Field name: ');
  String field = stdin.readLineSync()!;

  stdout.write('New value: ');
  String value = stdin.readLineSync()!;

  var task = tasks.firstWhere((t) => t['id'] == id, orElse: () => {});
  if (task.isEmpty) return;

  task[field] = value;
  task['lastModifiedDate'] = DateTime.now().toString();
  print('✅ Task updated');
}

void changeStatus() {
  stdout.write('Task ID: ');
  int id = int.parse(stdin.readLineSync()!);

  stdout.write('New Status: ');
  String s = stdin.readLineSync()!;
  if (!validStatus(s)) return;

  tasks.firstWhere((t) => t['id'] == id)['status'] = s;
}

void changePriority() {
  stdout.write('Task ID: ');
  int id = int.parse(stdin.readLineSync()!);

  stdout.write('New Priority: ');
  String p = stdin.readLineSync()!;
  if (!validPriority(p)) return;

  tasks.firstWhere((t) => t['id'] == id)['priority'] = p;
}

void addTag() {
  stdout.write('Task ID: ');
  int id = int.parse(stdin.readLineSync()!);

  stdout.write('Tag: ');
  String tag = stdin.readLineSync()!;

  tasks.firstWhere((t) => t['id'] == id)['tags'].add(tag);
}

void removeTag() {
  stdout.write('Task ID: ');
  int id = int.parse(stdin.readLineSync()!);

  stdout.write('Tag to remove: ');
  String tag = stdin.readLineSync()!;

  tasks.firstWhere((t) => t['id'] == id)['tags'].remove(tag);
}

void addNote() {
  stdout.write('Task ID: ');
  int id = int.parse(stdin.readLineSync()!);

  stdout.write('Note: ');
  String note = stdin.readLineSync()!;

  tasks.firstWhere((t) => t['id'] == id)['notes'] += '\n$note';
}

void deleteTask() {
  stdout.write('Task ID: ');
  int id = int.parse(stdin.readLineSync()!);

  stdout.write('Confirm delete (yes/no): ');
  if (stdin.readLineSync()!.toLowerCase() != 'yes') return;

  lastDeleted = tasks.firstWhere((t) => t['id'] == id);
  tasks.removeWhere((t) => t['id'] == id);
  print('❌ Task deleted');
}

void undoDelete() {
  if (lastDeleted != null) {
    tasks.add(lastDeleted!);
    lastDeleted = null;
    print('↩ Undo successful');
  }
}

void deleteCompletedTasks() =>
    tasks.removeWhere((t) => t['status'] == 'Completed');

void deleteCancelledTasks() =>
    tasks.removeWhere((t) => t['status'] == 'Cancelled');

void sortTasks() {
  tasks.sort(
    (a, b) =>
        priorityOrder[a['priority']]!.compareTo(priorityOrder[b['priority']]!),
  );
}

void displayStatistics() {
  int total = tasks.length;
  int completed = tasks.where((t) => t['status'] == 'Completed').length;

  print('Total: $total');
  print('Completed: $completed');
  print(
    'Completion Rate: ${total == 0 ? 0 : (completed / total * 100).toInt()}%',
  );
}

void exportTasks() {
  tasks.forEach(print);
}

void archiveTasks() {
  archive.addAll(tasks.where((t) => t['status'] == 'Completed'));
  tasks.removeWhere((t) => t['status'] == 'Completed');
}

void restoreFromArchive() {
  tasks.addAll(archive);
  archive.clear();
}

void main() {
  while (true) {
    print('''
--- ADVANCED TASK MANAGER ---
1. Add Task
2. Duplicate Task
3. View All Tasks
4. View Task Details
5. Search Tasks
6. Filter Tasks
7. Update Task
8. Change Status
9. Change Priority
10. Add Tag
11. Remove Tag
12. Add Note
13. Delete Task
14. Undo Delete
15. Delete Completed Tasks
16. Delete Cancelled Tasks
17. Sort Tasks
18. Statistics
19. Export Tasks
20. Archive Tasks
21. Restore Archive
22. Exit
''');

    stdout.write('Choose: ');
    int c = int.parse(stdin.readLineSync()!);

    switch (c) {
      case 1:
        addTask();
        break;
      case 2:
        duplicateTask();
        break;
      case 3:
        displayAllTasks();
        break;
      case 4:
        displayTaskDetails();
        break;
      case 5:
        searchTasks();
        break;
      case 6:
        filterTasks();
        break;
      case 7:
        updateTaskField();
        break;
      case 8:
        changeStatus();
        break;
      case 9:
        changePriority();
        break;
      case 10:
        addTag();
        break;
      case 11:
        removeTag();
        break;
      case 12:
        addNote();
        break;
      case 13:
        deleteTask();
        break;
      case 14:
        undoDelete();
        break;
      case 15:
        deleteCompletedTasks();
        break;
      case 16:
        deleteCancelledTasks();
        break;
      case 17:
        sortTasks();
        break;
      case 18:
        displayStatistics();
        break;
      case 19:
        exportTasks();
        break;
      case 20:
        archiveTasks();
        break;
      case 21:
        restoreFromArchive();
        break;
      case 22:
        exit(0);
      default:
        print('Invalid option');
    }
  }
}
