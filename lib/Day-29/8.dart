//* Question 8: Task Manager with Map
//* Create tasks using Map structure. Each task should have:
//* - id (unique number)
//* - description (string)
//* - status (Pending/Completed)
//* - priority (High/Medium/Low)
//*
//* Create function addTaskMap() that creates and adds task map to list. Add 5 tasks with different priorities.

void main() {
  List<Map<String, dynamic>> tasks = [];

  void addTaskMap(int id, String description, String priority) {
    tasks.add({
      'id': id,
      'description': description,
      'status': 'Pending',
      'priority': priority,
    });
  }

  addTaskMap(1, 'Buy groceries', 'High');
  addTaskMap(2, 'Finish assignment', 'Medium');
  addTaskMap(3, 'Workout', 'Low');
  addTaskMap(4, 'Pay bills', 'High');
  addTaskMap(5, 'Read book', 'Medium');

  for (var task in tasks) {
    print(task);
  }
}
