import 'package:flutter/material.dart';
import 'package:tOdO/components/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:tOdO/components/task_data.dart';

class TasksListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            taskTitle: taskData.tasks[index].name,
            isChecked: taskData.tasks[index].isDone,
            checkBoxStateCallback: (bool newValue) {
              taskData.updateTask(taskData.tasks[index]);
            },
            onLongPress: () {
              taskData.removeTask(taskData.tasks[index]);
            },
          );
        },
        itemCount: taskData.tasks.length,
      );
    });
  }
}
