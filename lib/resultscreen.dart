import 'package:flutter/material.dart';
import 'package:flutter_application_2/data/question_list.dart';
import 'package:flutter_application_2/question_summary.dart';

class Resultscreen extends StatelessWidget {
  const Resultscreen(
      {required this.restartQuiz, required this.chosenAnswers, super.key});

  final List<String> chosenAnswers;
  final void Function() restartQuiz;

  List<Map<String, Object>> getSummary() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
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
    final summarydata = getSummary();
    final numTotalQuestions = questions.length;
    final numAnswerdQuestion = summarydata.where((data) {
      return data['answer'] == data['selectedAnswer'];
    }).length;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'You have answered $numAnswerdQuestion corrects out of $numTotalQuestions Questions',
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color.fromARGB(255, 201, 198, 240),
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          QuestionSummary(summarydata),
          const SizedBox(height: 40),
          ElevatedButton.icon(
            onPressed: restartQuiz,
            icon: const Icon(Icons.restart_alt_outlined),
            label: const Text(
              "Restart",
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
