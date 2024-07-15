import 'package:flutter/material.dart';
import 'package:flutter_application_2/home.dart';
import 'package:flutter_application_2/questions_screen.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});
  @override
  State<QuizPage> createState() {
    return _QuizPageState();
  }
}

class _QuizPageState extends State<QuizPage> {
  Widget? activescreen;
  var selectedAnswersList = [];

  @override
  void initState() {
    super.initState();
    activescreen = HomePage(changeScreen);
  }

  void changeScreen() {
    setState(() {
      activescreen = QuestionsScreen(choseAnswer);
    });
  }

  void choseAnswer(String answer) {
    selectedAnswersList.add(answer);
  }

  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              // begin: Alignment.topLeft,
              // end: Alignment.bottomRight,
              colors: [
                Colors.purple,
                Colors.blue,
              ],
            ),
          ),
          child: activescreen,
        ),
      ),
    );
  }
}
