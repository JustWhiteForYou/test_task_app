import 'package:flutter/material.dart';
import 'package:test_task/routes.dart';

void main() {
  runApp(const TestTask());
}

class TestTask extends StatefulWidget {
  const TestTask({Key? key}) : super(key: key);

  @override
  State<TestTask> createState() => _TestTaskState();
}

class _TestTaskState extends State<TestTask> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routes,
      initialRoute: '/',
    );
  }
}
