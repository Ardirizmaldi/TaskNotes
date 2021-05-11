import 'package:flutter/material.dart';

class TaskWidget extends StatelessWidget {
  final String title;
  final bool isDone;
  final Function callbackFunction;

  TaskWidget({
    Key key,
    this.title,
    this.isDone,
    this.callbackFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
            decoration:
                isDone ? TextDecoration.lineThrough : TextDecoration.none,
          ),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isDone,
          onChanged: callbackFunction,
        ),
      ),
    );
  }
}
