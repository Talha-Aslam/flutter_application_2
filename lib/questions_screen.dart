import 'package:flutter/material.dart';
import 'package:flutter_application_2/data/question_list.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(this.onSelectAnswer, {super.key});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionPageState();
  }
}

class _QuestionPageState extends State<QuestionsScreen> {
  var currentQuestionindex = 0;

  void onAnswerQuestion(String selectedanswer) {
    widget.onSelectAnswer(selectedanswer);
    setState(() {
      currentQuestionindex++;
    });
  }

  @override
  Widget build(context) {
    final currenQuestion = questions[currentQuestionindex];
    return Center(
      child: Container(
        margin: const EdgeInsets.all(50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currenQuestion.text,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 213, 182, 236),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currenQuestion.getShuffledAnswer().map((answers) {
              return Container(
                margin: const EdgeInsets.only(top: 15),
                child: ElevatedButton(
                  onPressed: () {
                    onAnswerQuestion(answers);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 164, 109, 231),
                    foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                    padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  child: Text(
                    answers,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
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
