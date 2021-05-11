import 'package:flutter/material.dart';
import 'package:state_management_examples/models/task_model.dart';

class TaskWidget extends StatelessWidget {
  final TaskModel taskModel;

  const TaskWidget({
    Key key,
    this.taskModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskModel.title),
      trailing: Checkbox(
        value: taskModel.isDone,
        onChanged: (val) {},
      ),
    );
  }
}
