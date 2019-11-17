import 'package:flutter/foundation.dart';
import 'task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _task = [];

  int get taskCount {
    return _task.length;
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_task);
  }

  set addNewTask(Task newTask) {
    _task.add(newTask);
    notifyListeners();
  }

  void changeTaskState(int index) {
    _task[index].toggleDone();
    notifyListeners();
  }

  void removeTask(int index) {
    _task.removeAt(index);
    notifyListeners();
  }
}
