//Custom widget for ListTile
import 'package:flutter/material.dart';

class TaskListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('This is text'),
      trailing: Checkbox(
        value: false,
      ),
    );
  }
}
