import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function callbackFunction;

  const AddTaskScreen({
    Key key,
    this.callbackFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 50,
          vertical: 20,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'New Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                color: Colors.lightBlueAccent,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextField(
              textAlign: TextAlign.center,
              autofocus: true,
              onChanged: (val) => newTaskTitle = val,
            ),
            Container(
              padding: EdgeInsets.only(
                top: 15,
                bottom: 20,
              ),
              height: 80,
              width: 150,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.lightBlueAccent),
                ),
                onPressed: () => callbackFunction(newTaskTitle),
                child: Text(
                  'Add',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
