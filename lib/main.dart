import 'package:flutter/material.dart';

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
    var questions = ['Apa warna favorit kamu?', 'Apa makanan kesukaan kamu?'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(questions[_questionIndex]),
            RaisedButton(
              child: Text('Lanjut'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Putih'),
              onPressed: () => print('Answer 2 chosen!'),
            ),
            RaisedButton(
              child: Text('Hijau'),
              onPressed: () {
                print('Answer 3 chosen!');
              },
            ),
          ],
        ),
        // Invisible layout
      ),
    );
  }
}
