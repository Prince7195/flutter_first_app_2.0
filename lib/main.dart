import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalSore = 0;

  static const _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'Blue', 'score': 7},
        {'text': 'Green', 'score': 5},
        {'text': 'Black', 'score': 3},
      ]
    },
    {
      'questionText': 'What\'s your favorite Animal?',
      'answers': [
        {'text': 'Tiger', 'score': 7},
        {'text': 'Cheetha', 'score': 10},
        {'text': 'Lion', 'score': 3},
        {'text': 'Black Phanther', 'score': 5},
      ]
    },
    {
      'questionText': 'What\'s your favorite Book?',
      'answers': [
        {'text': 'Fiction', 'score': 3},
        {'text': 'Crime', 'score': 7},
        {'text': 'Non-Fiction', 'score': 5},
        {'text': 'Philosophy', 'score': 10},
      ]
    },
  ];

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex = _questionIndex + 1;
      _totalSore += score;
    });
    print(_questionIndex);
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalSore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('First App v2.0'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                question: _questions[_questionIndex],
                answerQuestion: _answerQuestion)
            : Result(_totalSore, _resetQuiz),
      ),
    );
  }
}
