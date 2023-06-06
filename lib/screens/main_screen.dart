import 'package:flutter/material.dart';
import 'package:test_task/domain/color_changer.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Color backgroundColor = const Color.fromRGBO(20, 24, 36, 1);
  List<String> testText = ['Hello There'];

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
              backgroundColor = ColorChanger.randomColor();
            },
          );
        },
        child: Center(
          child: RichText(
            // Тут використовуємо RichText та TextSpan для того щоб передати кастомний колір в кожну літеру
            text: TextSpan(
              children: List.generate(
                //List.generate для створення фіксованого списку
                testText[0].length,
                (index) => TextSpan(
                  text: testText[0][index],
                  style: TextStyle(
                    fontSize: 22,
                    color: ColorChanger.randomColor(),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
