import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final VoidCallback resetQuiz;

  const Result(this.score, this.resetQuiz);

  String get resultPhase {
    String resultText;
    if (score <= 12) {
      resultText = 'You are awasome and innocent';
    } else if (score <= 16) {
      resultText = 'Pretty likable';
    } else if (score <= 20) {
      resultText = 'You are ... strange!';
    } else {
      resultText = 'You are bad..!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhase,
            style: TextStyle(
                fontSize: 36, fontWeight: FontWeight.bold, color: Colors.blue),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetQuiz,
            child: Text('Restart Quiz'),
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.orange[800]),
            ),
          )
        ],
      ),
    );
  }
}
