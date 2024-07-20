import 'package:flutter/material.dart';
import 'package:flutter_application_2/data/question_list.dart';
import 'package:flutter_application_2/home.dart';
import 'package:flutter_application_2/questions_screen.dart';
import 'package:flutter_application_2/resultscreen.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});
  @override
  State<QuizPage> createState() {
    return _QuizPageState();
  }
}

class _QuizPageState extends State<QuizPage> {
  Widget? activescreen;
  List<String> selectedAnswersList = [];

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

    if (selectedAnswersList.length == questions.length) {
      setState(() {
        activescreen = Resultscreen(
            restartQuiz: restartQuiz, chosenAnswers: selectedAnswersList);
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswersList = [];
      activescreen = QuestionsScreen(choseAnswer);
    });
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
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 177, 14, 206),
                Color.fromARGB(255, 76, 162, 233),
              ],
            ),
          ),
          child: activescreen,
        ),
      ),
    );
  }
}
