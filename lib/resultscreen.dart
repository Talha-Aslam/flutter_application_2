import 'package:flutter/material.dart';

class Resultscreen extends StatelessWidget {
  const Resultscreen(
      {required this.restartQuiz, required this.chosenAnswers, super.key});

  final List<String> chosenAnswers;
  final void Function() restartQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'You have answered X out of Y questions',
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
