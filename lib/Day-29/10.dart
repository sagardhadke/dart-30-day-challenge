//* Question 10: Filter Tasks by Status
//* Create a function filterByStatus() that takes status (Pending/Completed) and displays only tasks with that status. Show count of filtered tasks.

void filterByStatus(List<Map<String, dynamic>> tasks, String status) {
  var filtered = tasks.where((t) => t['status'] == status).toList();

  print('Tasks with status $status:');
  for (var task in filtered) {
    print(task);
  }

  print('Total: ${filtered.length}');
}
