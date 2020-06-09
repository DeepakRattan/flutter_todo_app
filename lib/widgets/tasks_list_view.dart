// Custom widget for ListView
import 'package:flutter/material.dart';
import 'package:fluttertodoapp/models/tasks.dart';
import 'tasks_list_tile.dart';

class TaskListView extends StatefulWidget {
  final List<Task> tasksList;
  TaskListView({this.tasksList});
  @override
  _TaskListViewState createState() => _TaskListViewState();
}

class _TaskListViewState extends State<TaskListView> {
  // Lifting state up
  // We need to move the taskList to Task Screen so that it can be used
  // to update tasks and can also be used in AddTask Screen
  /*List<Task> tasksList = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Eggs'),
    Task(name: 'Buy Bread'),
    Task(name: 'Buy Rice'),
  ];*/
  @override
  Widget build(BuildContext context) {
    // Creating dynamic list view using ListView.builder
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskListTile(
            // Accessing the field of Stateful class inside State using "widget" keyword
            // "widget" refers to the stateful widget
            taskTitle: widget.tasksList[index].name,
            isChecked: widget.tasksList[index].isDone,
            checkBoxCallBack: (checkBoxState) {
              setState(() {
                widget.tasksList[index].toggleDone();
              });
            });
      },
      itemCount: widget.tasksList.length,
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
