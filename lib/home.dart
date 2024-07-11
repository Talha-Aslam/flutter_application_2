import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(context) {
    return Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.purple,
              Colors.blue,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/quiz-logo.png",
              height: 300,
              width: 300,
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
            ElevatedButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 240, 172, 36),
                  foregroundColor: Colors.white),
              child: const Text("Start Quiz"),
            ),
          ],
        ));
  }
}
