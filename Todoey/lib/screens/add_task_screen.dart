import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              onChanged: (value) {
                newTaskTitle = value;
              },
              textCapitalization: TextCapitalization.sentences,
              autofocus: true,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18.0),
              decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          width: 4.0, color: Colors.lightBlueAccent))),
            ),
            SizedBox(
              height: 30.0,
            ),
            FlatButton(
              onPressed: () {
                // addToList(newTaskTitle);
                if (newTaskTitle != null)
                  Provider.of<TaskData>(context).addNewTask =
                      Task(name: newTaskTitle);
                else
                  return;
                Navigator.pop(context);
              },
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Add',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
              color: Colors.lightBlueAccent,
            )
          ],
        ),
      ),
    );
  }
}
