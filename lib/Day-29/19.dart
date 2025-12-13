//* Question 19: Task Manager with Subtasks
//* Create a task structure that supports subtasks:
//* Main Task:
//* - id
//* - description
//* - status
//* - priority
//* - subtasks (list of subtask maps)
//*
//* Each Subtask:
//* - subtaskId
//* - description
//* - status
//*
//* Functions to implement:
//* - addMainTask() - creates main task
//* - addSubtask() - adds subtask to a main task
//* - displayTaskWithSubtasks() - shows main task with all its subtasks indented
//* - markSubtaskComplete() - marks specific subtask as complete
//* - deleteSubtask() - removes a subtask
//* - calculateProgress() - shows percentage completion based on completed subtasks
//*
//* Main task is considered complete only when all subtasks are complete.
//*
//* Example display:
//* Main Task 1: Complete Project [Progress: 66%]
//*     Subtask 1.1: Design UI [Completed]
//*     Subtask 1.2: Write Code [Completed]
//*     Subtask 1.3: Testing [Pending]
//*
//* Create menu system with all operations.

import 'dart:io';

int mainTaskId = 1;
int subTaskId = 1;

List<Map<String, dynamic>> mainTasks = [];

void addMainTask() {
  stdout.write('Enter main task description: ');
  String desc = stdin.readLineSync()!;

  stdout.write('Enter priority (High/Medium/Low): ');
  String priority = stdin.readLineSync()!;

  mainTasks.add({
    'id': mainTaskId++,
    'description': desc,
    'priority': priority,
    'status': 'Pending',
    'subtasks': [],
  });

  print('Main task added successfully');
}

void addSubtask() {
  stdout.write('Enter main task ID: ');
  int id = int.parse(stdin.readLineSync()!);

  var task = mainTasks.firstWhere((t) => t['id'] == id, orElse: () => {});

  if (task.isEmpty) {
    print('Main task not found');
    return;
  }

  stdout.write('Enter subtask description: ');
  String desc = stdin.readLineSync()!;

  task['subtasks'].add({
    'subtaskId': subTaskId++,
    'description': desc,
    'status': 'Pending',
  });

  print('Subtask added');
}

void markSubtaskComplete() {
  stdout.write('Enter main task ID: ');
  int taskId = int.parse(stdin.readLineSync()!);

  stdout.write('Enter subtask ID: ');
  int subId = int.parse(stdin.readLineSync()!);

  var task = mainTasks.firstWhere((t) => t['id'] == taskId, orElse: () => {});

  if (task.isEmpty) {
    print('Main task not found');
    return;
  }

  for (var sub in task['subtasks']) {
    if (sub['subtaskId'] == subId) {
      sub['status'] = 'Completed';
      print('Subtask marked as completed');
      updateMainTaskStatus(task);
      return;
    }
  }

  print('Subtask not found');
}

void deleteSubtask() {
  stdout.write('Enter main task ID: ');
  int taskId = int.parse(stdin.readLineSync()!);

  stdout.write('Enter subtask ID: ');
  int subId = int.parse(stdin.readLineSync()!);

  var task = mainTasks.firstWhere((t) => t['id'] == taskId, orElse: () => {});

  if (task.isEmpty) {
    print('Main task not found');
    return;
  }

  task['subtasks'].removeWhere((s) => s['subtaskId'] == subId);
  updateMainTaskStatus(task);
  print('Subtask deleted');
}

void updateMainTaskStatus(Map<String, dynamic> task) {
  if (task['subtasks'].isNotEmpty &&
      task['subtasks'].every((s) => s['status'] == 'Completed')) {
    task['status'] = 'Completed';
  } else {
    task['status'] = 'Pending';
  }
}

void calculateProgress(Map<String, dynamic> task) {
  int total = task['subtasks'].length;
  if (total == 0) {
    print('Progress: 0%');
    return;
  }

  int completed = task['subtasks']
      .where((s) => s['status'] == 'Completed')
      .length;

  int percent = ((completed / total) * 100).toInt();
  print('Progress: $percent%');
}

void displayTaskWithSubtasks() {
  if (mainTasks.isEmpty) {
    print('No main tasks available');
    return;
  }

  for (var task in mainTasks) {
    print(
      '\nMain Task ${task['id']}: ${task['description']} [${task['status']}]',
    );
    calculateProgress(task);

    for (var sub in task['subtasks']) {
      print(
        '   Subtask ${sub['subtaskId']}: ${sub['description']} [${sub['status']}]',
      );
    }
  }
}

void main() {
  while (true) {
    print('''
--- TASK MANAGER WITH SUBTASKS ---
1. Add Main Task
2. Add Subtask
3. Mark Subtask Complete
4. Delete Subtask
5. View Tasks
6. Exit
''');

    stdout.write('Choose option: ');
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        addMainTask();
        break;
      case 2:
        addSubtask();
        break;
      case 3:
        markSubtaskComplete();
        break;
      case 4:
        deleteSubtask();
        break;
      case 5:
        displayTaskWithSubtasks();
        break;
      case 6:
        exit(0);
      default:
        print('Invalid option');
    }
  }
}
