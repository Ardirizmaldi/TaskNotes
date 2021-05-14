import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TaskWidget extends StatelessWidget {
  final String title;
  final bool isDone;
  final Function checkTask;
  final Function removeTask;

  TaskWidget({
    Key key,
    this.title,
    this.isDone,
    this.checkTask,
    this.removeTask,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Slidable(
      secondaryActions: [
        IconSlideAction(
          foregroundColor: Colors.red,
          closeOnTap: true,
          caption: 'Remove',
          color: Colors.white,
          icon: Icons.delete,
          onTap: removeTask,
        ),
      ],
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: 0.2,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: ListTile(
          title: Text(
            title,
            style: TextStyle(
              decoration:
                  isDone ? TextDecoration.lineThrough : TextDecoration.none,
            ),
          ),
          trailing: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Checkbox(
              activeColor: Colors.lightBlueAccent,
              value: isDone,
              onChanged: checkTask,
            ),
          ),
        ),
      ),
    );
  }
}
