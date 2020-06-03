import 'package:flutter/material.dart';
import 'package:fluttertodoey/models/tasks_list.dart';
import 'package:fluttertodoey/screens/add_task_screen.dart';
import 'package:fluttertodoey/widgets/tasks_list_view.dart';
import 'package:provider/provider.dart';

class TasksScreen extends StatelessWidget {
  static final id = 'tasks';

  static const BorderRadius _topRounded = const BorderRadius.vertical(
    top: const Radius.circular(20.0),
  );

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
                Consumer<TasksList>(
                  builder: (_, tasksList, __) => Text(
                    '${tasksList.length} Tasks',
                    style: const TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
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
              child: const TasksListView(),
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
                child: const AddTaskScreen(),
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
