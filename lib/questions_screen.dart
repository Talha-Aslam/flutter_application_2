import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionPageState();
  }
}

class _QuestionPageState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'This is the First questions',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {},
            style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 164, 109, 231),
                foregroundColor: const Color.fromARGB(255, 255, 255, 255)),
            child: Text(
              "Answers 1",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 164, 109, 231),
                foregroundColor: const Color.fromARGB(255, 255, 255, 255)),
            child: Text(
              "Answers 2",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 164, 109, 231),
                foregroundColor: const Color.fromARGB(255, 255, 255, 255)),
            child: Text(
              "Answers 3",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 164, 109, 231),
                foregroundColor: const Color.fromARGB(255, 255, 255, 255)),
            child: Text(
              "Answers 4",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
