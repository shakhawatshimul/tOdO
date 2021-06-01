import 'package:flutter/material.dart';
import 'constants.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkBoxStateCallback;
  final Function onLongPress;

  TaskTile({this.isChecked, this.taskTitle, this.checkBoxStateCallback, this.onLongPress});

  @override
  Widget build(BuildContext context) {
    return ListTile(

      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: kdarkGreen,
        value: isChecked,
        onChanged: checkBoxStateCallback,
      ),
      onLongPress: onLongPress,
    );
  }
}


