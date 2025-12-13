//* Question 11: Filter Tasks by Priority
//* Create a function filterByPriority() that takes priority level and displays only tasks with that priority. Use different formatting for High (!!), Medium (!), Low (-) priority.

void filterByPriority(List<Map<String, dynamic>> tasks, String priority) {
  for (var task in tasks) {
    if (task['priority'] == priority) {
      String symbol = priority == 'High'
          ? '!!'
          : priority == 'Medium'
          ? '!'
          : '-';
      print('$symbol ${task['description']}');
    }
  }
}
