//Custom widget for ListTile
import 'package:flutter/material.dart';

class TaskListTile extends StatefulWidget {
  @override
  _TaskListTileState createState() => _TaskListTileState();
}

class _TaskListTileState extends State<TaskListTile> {
  bool isChecked = false;
  // The callback waits for the updated boolean value of checkbox and update the isChecked property
  // accordingly .
  void checkBoxCallBack(bool checkBoxState) {
    setState(() {
      isChecked = checkBoxState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is text',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckBox(
        checkboxState: isChecked,
        toggleCheckBoxState: checkBoxCallBack,
      ),
    );
  }
}

// TaskCheckBox widget deals with CheckBox State
class TaskCheckBox extends StatelessWidget {
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
}
