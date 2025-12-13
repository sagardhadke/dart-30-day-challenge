//* Question 14: Task Statistics
//* Create a function displayStatistics() that shows:
//* - Total tasks
//* - Completed tasks
//* - Pending tasks
//* - High priority tasks count
//* - Medium priority tasks count
//* - Low priority tasks count
//* Display in formatted manner.

void displayStatistics(List<Map<String, dynamic>> tasks) {
  int completed = 0, pending = 0;
  int high = 0, medium = 0, low = 0;

  for (var task in tasks) {
    task['status'] == 'Completed' ? completed++ : pending++;

    if (task['priority'] == 'High') high++;
    if (task['priority'] == 'Medium') medium++;
    if (task['priority'] == 'Low') low++;
  }

  print('--- Task Statistics ---');
  print('Total Tasks: ${tasks.length}');
  print('Completed: $completed');
  print('Pending: $pending');
  print('High Priority: $high');
  print('Medium Priority: $medium');
  print('Low Priority: $low');
}
