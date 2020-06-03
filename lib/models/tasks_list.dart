import 'package:flutter/foundation.dart';
import 'package:fluttertodoey/models/task.dart';

class TasksList with ChangeNotifier {
  final List<Task> _tasks = [];

  int get length => _tasks.length;

  Task getAt(int index) => _tasks[index];

  void add(String name) {
    _tasks.add(Task(name: name));
    notifyListeners();
  }

  void remove(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }

  void toggle(int index) {
    _tasks[index] = Task.toggled(_tasks[index]);
    notifyListeners();
  }
}
