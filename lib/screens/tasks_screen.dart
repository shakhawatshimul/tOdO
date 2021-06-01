import 'package:flutter/material.dart';
import 'package:tOdO/components/components.dart';
import 'package:tOdO/components/constants.dart';
import 'package:tOdO/components/tasks_list.dart';
import 'add_task_screen.dart';
import 'package:provider/provider.dart';
import 'package:tOdO/components/task_data.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kdarkGreen,
      floatingActionButton: FloatingButton(onPressed: () {
        showModalBottomSheet(
            context: context, builder: (context) => AddTaskScreen());
      }),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding:
                  EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  kCircleAvatar,
                  Text(
                    'ToDo',
                    style: kTextStyleForToDo,
                  ),
                  Text(
                    '${Provider.of<TaskData>(context).tasks.length} Tasks',
                    style: kTextStyleForLeftToDo,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: kContainerDecoration,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 40,
                  ),
                  child: TasksListView(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
