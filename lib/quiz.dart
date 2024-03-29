import 'package:adv_basics/questions_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/home.dart';

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;
  
  @override
  void initState() {
    activeScreen = HomePage(switchScreen);
    super.initState();
  } 
  
  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 57, 0, 155),
            Color.fromARGB(255, 47, 0, 55)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: activeScreen,
      )),
    );
  }
}
