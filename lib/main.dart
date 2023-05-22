import 'package:flutter/material.dart';

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Test Task'),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Color.fromRGBO(214, 86, 11, 1),
                  Color.fromRGBO(206, 37, 75, 1)
                ],
              ),
            ),
          ),
        ),
        body: const Center(),
      ),
    );
  }
}
