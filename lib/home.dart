import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/quiz-logo.png",
          height: 300,
          width: 300,
          color: const Color.fromARGB(159, 255, 255, 255),
        ),
        const SizedBox(height: 40),
        const Text(
          "Welcome to the Quiz App",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 40),
        ElevatedButton.icon(
          onPressed: startQuiz,
          style: TextButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 240, 172, 36),
            foregroundColor: Colors.white,
          ),
          icon: const Icon(Icons.arrow_right_alt_rounded),
          label: const Text(
            "Start Quiz",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }
}
