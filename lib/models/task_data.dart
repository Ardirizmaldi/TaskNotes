import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:state_management_examples/models/task_model.dart';

class TaskData extends ChangeNotifier {
  List<TaskModel> _listTask = [];

  int get taskCount {
    return _listTask.length;
  }

  void updateTask(TaskModel taskModel) {
    taskModel.toggleDone();
    notifyListeners();
  }

  void addTask(String taskTitle) {
    var newTask = TaskModel(title: taskTitle);
    _listTask.add(newTask);
    notifyListeners();
  }

  void removeTask(TaskModel taskModel) {
    _listTask.remove(taskModel);
    notifyListeners();
  }

  UnmodifiableListView<TaskModel> get tasks {
    return UnmodifiableListView(_listTask);
  }
}
