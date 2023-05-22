import 'package:flutter/material.dart';
import 'package:test_task/domain/color_changer.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Color backgroundColor = const Color.fromRGBO(20, 24, 36, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
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
      body: InkWell(
        onTap: () {
          setState(
            () {
              backgroundColor = changeBackgroundColor();
            },
          );
        },
        child: const Center(
          child: Text(
            'Hello there',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(240, 83, 21, 1),
            ),
          ),
        ),
      ),
    );
  }
}
