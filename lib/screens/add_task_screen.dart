import 'package:flutter/material.dart';
import 'package:fluttertodoey/models/tasks_list.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen();

  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final TextEditingController _controller = TextEditingController();

  static const InputBorder _inputBorder = UnderlineInputBorder(
    borderSide: const BorderSide(width: 5.0, color: Colors.lightBlueAccent),
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45.0, vertical: 30.0),
      child: Column(
        children: [
          const Text(
            'Add Task',
            style: const TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 35.0,
              fontWeight: FontWeight.w400,
            ),
          ),
          TextField(
            autofocus: true,
            controller: _controller,
            decoration: InputDecoration(
              enabledBorder: _inputBorder,
              focusedBorder: _inputBorder,
            ),
            style: TextStyle(color: Colors.lightBlueAccent, fontSize: 20.0),
          ),
          const SizedBox(height: 30.0),
          SizedBox(
            width: double.infinity,
            child: FlatButton(
              onPressed: () {
                Provider.of<TasksList>(context, listen: false)
                    .add(_controller.text);
                _controller.clear();
              },
              color: Colors.lightBlueAccent,
              child: const Padding(
                padding: const EdgeInsets.all(15.0),
                child: const Text(
                  'Add',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400),
                ),
              ),
              shape: const BorderDirectional(),
            ),
          ),
        ],
      ),
    );
  }
}
