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
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _questions.length) {}
  }

  @override
  Widget build(BuildContext context) {
    // Const dapat digunakan untuk deklarasi variabel immutable yang nilainya bersifat konstan dan harus sudah diketahui pada saat waktu kompilasi (Compile time) berjalan, artinya adalah nilai dari variabel tersebut harus sudah di berikan value secara langsung.
    // .map buat array baru tidak seperti .add
    // additional
    // https://belajarflutter.com/perbedaan-final-dan-const-pada-dart-dan-flutter/#:~:text=Perbedaan%20utama%20ada%20pada%20inialisasi,final%20tidak%20mengharuskan%20variabel%20memiliki

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
        // Invisible layout
      ),
    );
  }
}
