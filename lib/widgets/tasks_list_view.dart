// Custom widget for ListView
import 'package:flutter/material.dart';
import 'package:fluttertodoapp/models/tasks.dart';
import 'tasks_list_tile.dart';

class TaskListView extends StatefulWidget {
  @override
  _TaskListViewState createState() => _TaskListViewState();
}

class _TaskListViewState extends State<TaskListView> {
  List<Task> tasksList = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Eggs'),
    Task(name: 'Buy Bread'),
    Task(name: 'Buy Rice'),
  ];
  @override
  Widget build(BuildContext context) {
    // Creating dynamic list view using ListView.builder
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskListTile(
            taskTitle: tasksList[index].name,
            isChecked: tasksList[index].isDone,
            checkBoxCallBack: (checkBoxState) {
              setState(() {
                tasksList[index].toggleDone();
              });
            });
      },
      itemCount: tasksList.length,
    );

    /*return ListView(
      children: <Widget>[
        // TaskListTile is custom widget for ListTile
        TaskListTile(
          taskTitle: tasksList[0].name,
          isChecked: tasksList[0].isDone,
        ),
        TaskListTile(
          taskTitle: tasksList[1].name,
          isChecked: tasksList[1].isDone,
        ),
        TaskListTile(
          taskTitle: tasksList[2].name,
          isChecked: tasksList[2].isDone,
        ),
        TaskListTile(
          taskTitle: tasksList[3].name,
          isChecked: tasksList[3].isDone,
        ),
      ],
    );*/
  }
}
