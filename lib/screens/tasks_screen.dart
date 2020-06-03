import 'package:flutter/material.dart';
import 'package:fluttertodoey/models/task.dart';
import 'package:fluttertodoey/screens/add_task_screen.dart';
import 'package:fluttertodoey/widgets/todo_list.dart';

class TasksScreen extends StatefulWidget {
  static final id = 'tasks';

  @override
  _TasksScreenState createState() => _TasksScreenState();
}

const BorderRadius _topRounded = BorderRadius.vertical(
  top: Radius.circular(20.0),
);

class _TasksScreenState extends State<TasksScreen> {
  List<Task> tasks = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(
              top: 60.0,
              left: 35.0,
              bottom: 30.0,
              right: 35.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 35.0,
                  foregroundColor: Colors.lightBlueAccent,
                  child: const Icon(
                    Icons.list,
                    color: Colors.lightBlueAccent,
                    size: 50.0,
                  ),
                ),
                const SizedBox(height: 30.0),
                const Text(
                  'Todoey',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '${tasks.length} Tasks',
                  style: const TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: _topRounded,
              ),
              child: TasksList(
                tasks: tasks,
                onTaskToggled: (taskId) {
                  setState(() => tasks[taskId] = Task.toggled(tasks[taskId]));
                },
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: AddTaskScreen(
                  onAddPressed: (task) => setState(() => tasks.insert(0, task)),
                ),
              ),
            ),
            shape: const RoundedRectangleBorder(borderRadius: _topRounded),
          );
        },
        backgroundColor: Colors.lightBlueAccent,
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 40.0,
        ),
      ),
    );
  }
}
