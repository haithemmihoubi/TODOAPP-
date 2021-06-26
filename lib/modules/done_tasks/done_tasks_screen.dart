import 'package:flutter/material.dart';

class doneTask extends StatelessWidget {
  const doneTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      "done tasks",
      style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
    ));
  }
}
