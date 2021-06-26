import 'package:flutter/material.dart';

class ArchiveTask extends StatelessWidget {
  const ArchiveTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      "archived task",
      style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
    ));
  }
}
