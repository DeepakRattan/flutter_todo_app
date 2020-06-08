// Custom widget for ListView
import 'package:flutter/material.dart';

import 'tasks_list_tile.dart';

class TaskListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        // TaskListTile is custom widget for ListTile
        TaskListTile(),
        TaskListTile(),
        TaskListTile(),
        TaskListTile(),
        TaskListTile(),
        TaskListTile(),
        TaskListTile(),
        TaskListTile(),
        TaskListTile(),
        TaskListTile(),
        TaskListTile(),
        TaskListTile(),
        TaskListTile(),
        TaskListTile(),
        TaskListTile(),
        TaskListTile(),
      ],
    );
  }
}
