import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
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
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text('Lanjut'),
              onPressed: answerQuestion,
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
