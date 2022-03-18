import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'Tools terbaik untuk UI/UX Design : ',
      'answers': [
        {'text': 'Figma', 'score': 30},
        {'text': 'Adobe XD', 'score': 15},
        {'text': 'Framer', 'score': 5},
        {'text': 'Canva', 'score': 0}
      ],
    },
    {
      'questionText':
          'Dibawah ini manakah yang bukan termasuk tipe data primitif : ',
      'answers': [
        {'text': 'byte', 'score': 0},
        {'text': 'string', 'score': 35},
        {'text': 'int', 'score': 0},
        {'text': 'double', 'score': 0}
      ],
    },
    {
      'questionText':
          'Tokoh terkenal yang terjadi pada perang dunia ke 2 adalah : ',
      'answers': [
        {'text': 'Douglas Haig', 'score': 0},
        {'text': 'Vladimir Puttin', 'score': 0},
        {'text': 'Enver Pasha', 'score': 0},
        {'text': 'Joseph Stallin', 'score': 35}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _questions.length) {}
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
