import 'package:flutter/material.dart';
import 'package:tOdO/components/constants.dart';
import 'package:provider/provider.dart';
import 'package:tOdO/components/components.dart';
import 'package:tOdO/components/task.dart';
import 'package:tOdO/components/task_data.dart';

String newTaskTitle;

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Color(0xff757575),
        child: Container(
          padding: EdgeInsets.only(top: 15, left: 40, right: 40),
          decoration: kAddTaskBoxDecoration,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: kAddTaskTextStyle,
              ),
              TextField(
                cursorColor: kdarkGreen,
                autofocus: true,
                decoration: kTextFieldDecoration,
                onChanged: (value) {
                  newTaskTitle = value;
                },
              ),
              kSizedBoxofHeight15,
              FlatButtonAdd(
                onPressed: () {
                  Provider.of<TaskData>(context).addTask(newTaskTitle);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
