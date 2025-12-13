//* Day - 29 Questions
/*

* LEVEL 1: FOUNDATION (Questions 1-7)

Question 1: Simple Task List - Create
Create a list to store tasks (as strings). Create a function addTask() that takes task description and adds it to the list. Add 5 tasks and display all tasks with index numbers.

Question 2: Display All Tasks - Read
Create a function displayTasks() that takes a task list and displays all tasks in formatted manner:
Task 1: [task description]
Task 2: [task description]
If list is empty, display "No tasks available".

Question 3: Update Task
Create a function updateTask() that takes task list, index, and new description. Update the task at given index. Display updated list. Handle invalid index.

Question 4: Delete Task
Create a function deleteTask() that takes task list and index. Remove task at that index. Display updated list. Handle invalid index with error message.

Question 5: Task Counter
Create a function countTasks() that returns total number of tasks in the list. Display count with message "Total tasks: X".

Question 6: Search Task
Create a function searchTask() that takes task list and search keyword. Display all tasks containing that keyword. If not found, display "No matching tasks found".

Question 7: Clear All Tasks
Create a function clearAllTasks() that removes all tasks from list. Ask for confirmation before clearing. Display success message.


* LEVEL 2: INTERMEDIATE (Questions 8-14)

Question 8: Task Manager with Map
Create tasks using Map structure. Each task should have:
- id (unique number)
- description (string)
- status (Pending/Completed)
- priority (High/Medium/Low)

Create function addTaskMap() that creates and adds task map to list. Add 5 tasks with different priorities.

Question 9: Mark Task as Complete
Create a function markComplete() that takes task id and changes status from "Pending" to "Completed". Display updated task. Handle case when task not found.

Question 10: Filter Tasks by Status
Create a function filterByStatus() that takes status (Pending/Completed) and displays only tasks with that status. Show count of filtered tasks.

Question 11: Filter Tasks by Priority
Create a function filterByPriority() that takes priority level and displays only tasks with that priority. Use different formatting for High (!!), Medium (!), Low (-) priority.

Question 12: Update Task Details
Create a function updateTaskDetails() that allows updating:
- Description
- Priority
- Status
Take task id and field to update as parameters. Display updated task.

Question 13: Sort Tasks by Priority
Create a function sortByPriority() that arranges tasks: High priority first, then Medium, then Low. Display sorted task list.

Question 14: Task Statistics
Create a function displayStatistics() that shows:
- Total tasks
- Completed tasks
- Pending tasks
- High priority tasks count
- Medium priority tasks count
- Low priority tasks count
Display in formatted manner.


* LEVEL 3: ADVANCED (Questions 15-20)

Question 15: Complete Task Manager with Menu
Create a comprehensive task manager with menu:
1. Add Task
2. View All Tasks
3. Update Task
4. Delete Task
5. Mark as Complete
6. Search Task
7. Filter by Status
8. Filter by Priority
9. View Statistics
10. Exit

Use switch case for menu. Use while loop to keep showing menu until exit. Implement all functions with proper error handling.

Each task should have:
- Unique ID (auto-increment)
- Description
- Status (Pending/Completed)
- Priority (High/Medium/Low)
- Created Date (you can use string for now)

Question 16: Task Manager with Validation
Enhance task manager with validation functions:
- validateTaskDescription() - description should not be empty, minimum 5 characters
- validatePriority() - only accept High/Medium/Low
- validateTaskId() - check if task id exists before operations
- validateStatus() - only accept Pending/Completed

Add these validations to all CRUD operations. Display appropriate error messages for invalid inputs.

Question 17: Task Manager with Multiple Lists
Create separate lists for different categories:
- Personal tasks
- Work tasks
- Shopping tasks
- Important tasks

Functions to create:
- addTaskToCategory() - adds task to specific category
- moveTask() - moves task from one category to another
- displayCategory() - shows tasks from specific category
- displayAllCategories() - shows all tasks grouped by category
- searchAcrossCategories() - searches task in all categories

Implement complete menu system with category management.

Question 18: Task Manager with Due Dates
Enhance task structure to include:
- id
- description
- status
- priority
- dueDate (string format: "DD-MM-YYYY")
- createdDate

Create functions:
- addTaskWithDueDate() - adds task with due date
- displayOverdueTasks() - shows tasks with past due dates (compare with current date "06-12-2025")
- displayUpcomingTasks() - shows tasks due in next 7 days
- sortByDueDate() - arranges tasks by due date (earliest first)
- extendDueDate() - allows changing due date of a task

Implement complete system with menu.

Question 19: Task Manager with Subtasks
Create a task structure that supports subtasks:
Main Task:
- id
- description
- status
- priority
- subtasks (list of subtask maps)

Each Subtask:
- subtaskId
- description
- status

Functions to implement:
- addMainTask() - creates main task
- addSubtask() - adds subtask to a main task
- displayTaskWithSubtasks() - shows main task with all its subtasks indented
- markSubtaskComplete() - marks specific subtask as complete
- deleteSubtask() - removes a subtask
- calculateProgress() - shows percentage completion based on completed subtasks

Main task is considered complete only when all subtasks are complete.

Example display:
Main Task 1: Complete Project [Progress: 66%]
    Subtask 1.1: Design UI [Completed]
    Subtask 1.2: Write Code [Completed]
    Subtask 1.3: Testing [Pending]

Create menu system with all operations.

Question 20: Advanced Task Manager - Complete CRUD System
Create a professional task management system with all features:

Task Structure:
- id (auto-increment)
- title
- description
- status (Pending/In Progress/Completed/Cancelled)
- priority (High/Medium/Low)
- category (Personal/Work/Shopping/Health/Education)
- dueDate
- createdDate
- lastModifiedDate
- tags (list of strings for labeling)
- notes (additional notes)

CRUD Operations:
CREATE:
- addTask() - with all details
- duplicateTask() - creates copy of existing task with new id

READ:
- displayAllTasks() - formatted table view
- displayTaskDetails() - detailed view of single task
- searchTasks() - search by title, description, tags
- filterTasks() - multiple filter options (status, priority, category, date range)

UPDATE:
- updateTaskField() - update any field of task
- changeStatus() - change task status
- changePriority() - change priority
- addTag() - add new tag to task
- removeTag() - remove tag from task
- addNote() - append note to task

DELETE:
- deleteTask() - remove task (ask confirmation)
- deleteCompletedTasks() - bulk delete all completed
- deleteCancelledTasks() - bulk delete all cancelled

ADVANCED FEATURES:
- sortTasks() - sort by priority, due date, created date, status
- displayStatistics() - comprehensive statistics:
  * Total tasks
  * Status-wise count
  * Priority-wise count
  * Category-wise count
  * Completion rate
  * Overdue tasks count
- exportTasks() - display all tasks in copy-paste friendly format
- archiveTasks() - move completed tasks to archive list
- restoreFromArchive() - restore archived tasks

MENU SYSTEM:
Main Menu:
1. Task Operations (Add, View, Update, Delete)
2. Search & Filter
3. Status Management
4. Priority Management
5. Category Management
6. Statistics & Reports
7. Archive Management
8. Settings
9. Exit

Use nested menus with switch case.
Implement data validation for all inputs.
Use functions for each operation.
Add proper error handling.
Use loops (for, while) appropriately.
Use maps and lists effectively.
Implement recursion where suitable (like searching in nested categories).
Use anonymous functions for filtering and sorting.

Additional Requirements:
- Display formatted output with proper alignment
- Show success/error messages for each operation
- Ask confirmation for delete operations
- Provide option to undo last action (store last deleted task)
- Show loading indicators using loops
- Color code priorities in display (use text labels: [HIGH], [MED], [LOW])
- Calculate and show productivity metrics

Test the complete system with:
- Adding 10 tasks with different attributes
- Performing all CRUD operations
- Using all filter and search options
- Generating statistics
- Testing edge cases (empty lists, invalid inputs, etc.)

 */
