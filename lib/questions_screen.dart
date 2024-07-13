import 'package:flutter/material.dart';
import 'package:flutter_application_2/data/question_list.dart';

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
    final currenQuestion = questions[0];
    return Center(
      child: Container(
        margin: EdgeInsets.all(50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currenQuestion.text,
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currenQuestion.answers.map((answers) {
              return Container(
                margin: const EdgeInsets.only(top: 15),
                child: ElevatedButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 164, 109, 231),
                    foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                    padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  child: Text(
                    currenQuestion.answers[0],
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
