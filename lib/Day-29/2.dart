//* Question 2: Display All Tasks - Read
//* Create a function displayTasks() that takes a task list and displays all tasks in formatted manner:
//* Task 1: [task description]
//* Task 2: [task description]
//* If list is empty, display "No tasks available".

void main() {
  List<String> tasks = ['Buy groceries', 'Finish homework', 'Call the plumber'];

  void displayTasks(List<String> tasks) {
    if (tasks.isEmpty) {
      print('No tasks available');
    } else {
      for (int i = 0; i < tasks.length; i++) {
        print('Task ${i + 1}: ${tasks[i]}');
      }
    }
  }

  displayTasks(tasks);
}
