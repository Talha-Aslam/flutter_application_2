import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/data/question_list.dart';

class Resultscreen extends StatelessWidget {
  const Resultscreen(
      {required this.restartQuiz, required this.chosenAnswers, super.key});

  final List<String> chosenAnswers;
  final void Function() restartQuiz;

  List<Map<String, Object>> getSummary() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': questions.length,
        'questions': questions[i].text,
        'answer': questions[i].answers[0],
        'selectedAnswerlength': chosenAnswers.length,
        'selectedAnswer': chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'You have answered x out of Y questions',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Text("list"),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: restartQuiz,
            icon: const Icon(Icons.restart_alt_outlined),
            label: Text(
              "Restart",
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
