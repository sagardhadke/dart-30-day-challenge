//* Question 1: Simple Task List - Create
//* Create a list to store tasks (as strings). Create a function addTask() that takes task description and adds it to the list. Add 5 tasks and display all tasks with index numbers.

void main() {
  List<String> tasks = [];

  void addTask(String taskDescription) {
    tasks.add(taskDescription);
  }

  addTask('Buy groceries');
  addTask('Finish homework');
  addTask('Call the plumber');
  addTask('Go to the gym');
  addTask('Read a book');

  for (int i = 0; i < tasks.length; i++) {
    print('Task ${i + 1}: ${tasks[i]}');
  }
}
