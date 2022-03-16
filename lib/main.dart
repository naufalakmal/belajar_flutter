import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'Apa warna favorit kamu : ',
        'answers': ['Hitam', 'Putih', 'Hijau', 'Biru'],
      },
      {
        'questionText': 'Apa makanan kesukaan kamu : ',
        'answers': ['Bakso', 'Soto', 'Tom Yam', 'Ramen'],
      },
      {
        'questionText': 'Tokoh favorit kamu di perang dunia ke 2 adalah : ',
        'answers': [
          'Adolf Hitler',
          'Joseph Stalin',
          'Winston Churchill',
          'Benitto Mussolini'
        ],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
        // Invisible layout
      ),
    );
  }
}
