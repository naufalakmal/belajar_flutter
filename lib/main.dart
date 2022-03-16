import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer chosen!');
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
            Text('The question!'),
            RaisedButton(
              child: Text('Hitam'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Putih'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Hijau'),
              onPressed: answerQuestion,
            ),
          ],
        ),
        // Invisible layout
      ),
    );
  }
}
