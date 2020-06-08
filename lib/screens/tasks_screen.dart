import 'package:flutter/material.dart';
import 'package:fluttertodoapp/screens/add_task_screen.dart';
import 'package:fluttertodoapp/widgets/tasks_list_view.dart';

class TaskScreen extends StatelessWidget {
  //Widget buildBottomSheet(BuildContext context) => AddTaskScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Display bottom sheet
          /* 1. By default, the BottomSheet will take up half the screen.
             2. For certain screen sizes, this may mean the Add button is obscured.
                Setting the isScrolledControlled property to true you can make the modal take up the full screen
             3. To have the AddTaskScreen sit just above the keyboard, you can wrap it
             inside a SingleChildScrollView, which determines the padding at the bottom
             using a MediaQuery.
             take up the full screen: */
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => SingleChildScrollView(
              // To have the AddTaskScreen sit just above the keyboard,
              // you can wrap it inside a SingleChildScrollView, which determines the padding at the bottom using a MediaQuery.
              child: AddTaskScreen(),
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
            ),
          );
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(
          Icons.add,
          size: 30.0,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                left: 30.0, top: 60.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30.0,
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                    color: Colors.blueAccent,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'ToDoApp',
                  style: TextStyle(
                    fontSize: 50.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '12 Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              // TaskListView is custom widget for ListView
              child: TaskListView(),
              height: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.0),
                  topLeft: Radius.circular(20.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
