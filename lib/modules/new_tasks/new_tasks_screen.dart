import 'package:flutter/material.dart';

class newTask extends StatelessWidget {
  const newTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      "new task",
      style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
    ));
  }
}
