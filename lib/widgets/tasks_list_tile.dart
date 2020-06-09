//Custom widget for ListTile
import 'package:flutter/material.dart';

class TaskListTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkBoxCallBack;

  TaskListTile({this.isChecked, this.taskTitle, this.checkBoxCallBack});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkBoxCallBack,
      ),
    );
  }
}

// TaskCheckBox widget deals with CheckBox State
/*class TaskCheckBox extends StatelessWidget {
  final bool checkboxState;
  final Function toggleCheckBoxState;

  TaskCheckBox({this.checkboxState, this.toggleCheckBoxState});
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      // We are using the "toggleCheckBoxState" callback as setState() method can not be used
      // for stateless widget
      // When the checkbox changes,the "toggleCheckBoxState" callback is triggered and pass the latest
      // state of the checkbox .That callback is sitting there waiting to jump into actions and pass
      // the current state of the checkbox.So isChecked property is updated to latest values.
      onChanged: toggleCheckBoxState,
    );
  }
}*/
