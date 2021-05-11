import 'package:flutter/material.dart';
import 'package:state_management_examples/models/task_model.dart';
import 'package:state_management_examples/screens/widgets/task_widget.dart';

class TaskList extends StatelessWidget {
  final List<TaskModel> taskModels;
  const TaskList({
    Key key,
    this.taskModels,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<TaskWidget> listTask = [];
    for (var taskModel in taskModels) {
      final task = TaskWidget(taskModel: taskModel);

      listTask.add(task);
    }

    return ListView(
      children: listTask,
    );
  }
}
