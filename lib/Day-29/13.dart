//* Question 13: Sort Tasks by Priority
//* Create a function sortByPriority() that arranges tasks: High priority first, then Medium, then Low. Display sorted task list.

void sortByPriority(List<Map<String, dynamic>> tasks) {
  Map<String, int> priorityOrder = {
    'High': 1,
    'Medium': 2,
    'Low': 3
  };

  tasks.sort((a, b) =>
      priorityOrder[a['priority']]!.compareTo(priorityOrder[b['priority']]!));

  for (var task in tasks) {
    print(task);
  }
}
