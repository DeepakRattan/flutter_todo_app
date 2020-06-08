import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadiusDirectional.only(
            topStart: Radius.circular(20.0),
            topEnd: Radius.circular(20.0),
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Add Data',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 0, right: 0, bottom: 30.0, top: 10.0),
                child: TextField(
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                  ),
                  autofocus: true,
                  textAlign: TextAlign.center,
                ),
              ),
              FlatButton(
                padding: EdgeInsets.all(10.0),
                color: Colors.lightBlueAccent,
                onPressed: () {},
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
