//* Question 17: Task Manager with Multiple Lists
//* Create separate lists for different categories:
//* - Personal tasks
//* - Work tasks
//* - Shopping tasks
//* - Important tasks
//*
//* Functions to create:
//* - addTaskToCategory() - adds task to specific category
//* - moveTask() - moves task from one category to another
//* - displayCategory() - shows tasks from specific category
//* - displayAllCategories() - shows all tasks grouped by category
//* - searchAcrossCategories() - searches task in all categories
//*
//* Implement complete menu system with category management.

import 'dart:io';

int autoId = 1;

Map<String, List<Map<String, dynamic>>> categories = {
  'Personal': [],
  'Work': [],
  'Shopping': [],
  'Important': [],
};

void addTaskToCategory() {
  stdout.write('Enter category (Personal/Work/Shopping/Important): ');
  String category = stdin.readLineSync()!;

  if (!categories.containsKey(category)) {
    print('Invalid category');
    return;
  }

  stdout.write('Enter task description: ');
  String desc = stdin.readLineSync()!;

  categories[category]!.add({
    'id': autoId++,
    'description': desc,
    'status': 'Pending',
  });

  print('Task added to $category category');
}

void moveTask() {
  stdout.write('Enter task ID: ');
  int id = int.parse(stdin.readLineSync()!);

  stdout.write('Move from category: ');
  String from = stdin.readLineSync()!;

  stdout.write('Move to category: ');
  String to = stdin.readLineSync()!;

  if (!categories.containsKey(from) || !categories.containsKey(to)) {
    print('Invalid category');
    return;
  }

  var task = categories[from]!.firstWhere(
    (t) => t['id'] == id,
    orElse: () => {},
  );

  if (task.isEmpty) {
    print('Task not found');
    return;
  }

  categories[from]!.remove(task);
  categories[to]!.add(task);

  print('Task moved successfully');
}

void displayCategory() {
  stdout.write('Enter category name: ');
  String category = stdin.readLineSync()!;

  if (!categories.containsKey(category)) {
    print('Invalid category');
    return;
  }

  print('--- $category Tasks ---');
  if (categories[category]!.isEmpty) {
    print('No tasks found');
  }

  for (var task in categories[category]!) {
    print('ID: ${task['id']} | ${task['description']} | ${task['status']}');
  }
}

void displayAllCategories() {
  categories.forEach((category, taskList) {
    print('\n--- $category ---');
    if (taskList.isEmpty) {
      print('No tasks');
    } else {
      for (var task in taskList) {
        print('ID: ${task['id']} | ${task['description']} | ${task['status']}');
      }
    }
  });
}

void searchAcrossCategories() {
  stdout.write('Enter keyword to search: ');
  String keyword = stdin.readLineSync()!;

  bool found = false;

  categories.forEach((category, taskList) {
    for (var task in taskList) {
      if (task['description'].toLowerCase().contains(keyword.toLowerCase())) {
        print('[$category] ID: ${task['id']} | ${task['description']}');
        found = true;
      }
    }
  });

  if (!found) {
    print('No matching tasks found');
  }
}

void main() {
  while (true) {
    print('''
--- CATEGORY TASK MANAGER ---
1. Add Task to Category
2. Move Task
3. View Category Tasks
4. View All Categories
5. Search Task
6. Exit
''');

    stdout.write('Choose option: ');
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        addTaskToCategory();
        break;
      case 2:
        moveTask();
        break;
      case 3:
        displayCategory();
        break;
      case 4:
        displayAllCategories();
        break;
      case 5:
        searchAcrossCategories();
        break;
      case 6:
        exit(0);
      default:
        print('Invalid option');
    }
  }
}
