import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:fluttertodo/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks=[
    Task(name: 'A'),
    Task(name: 'B'),
    Task(name: 'C')
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle){
    final task=Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();

  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}


