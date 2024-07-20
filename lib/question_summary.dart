import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summarydata, {super.key});

  final List<Map<String, Object>> summarydata;

  Widget build(context) {
    return Column(
      children: summarydata.map(
        (data) {
          return Row(
            children: [
              Text(
                ((data['question_index'] as int) + 1).toString(),
              ),
            ],
          );
        },
      ).toList(),
    );
  }
}
