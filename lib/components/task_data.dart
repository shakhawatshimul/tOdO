import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(
      name: 'Buy a Book',
    ),
    Task(
      name: 'Buy a Pen',
    ),
    Task(
      name: 'Go to the library',
    ),
  ];

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toogleTaskDone();
    notifyListeners();
  }

  void removeTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
