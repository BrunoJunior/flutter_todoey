import 'package:flutter/material.dart';
import 'package:fluttertodoey/models/tasks_list.dart';
import 'package:fluttertodoey/screens/tasks_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TasksList>(
      create: (_) => TasksList(),
      child: MaterialApp(
        initialRoute: TasksScreen.id,
        routes: {TasksScreen.id: (context) => TasksScreen()},
      ),
    );
  }
}
