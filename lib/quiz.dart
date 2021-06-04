import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Map<String, Object> question;
  final Function answerQuestion;

  const Quiz({required this.question, required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question((question['questionText'] as String)),
        ...(question['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(
              () => answerQuestion(answer["score"]), answer['text'] as String);
        }).toList(),
      ],
    );
  }
}
