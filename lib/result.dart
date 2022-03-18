import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    var resultText;
    if (resultScore >= 90) {
      resultText =
          'Score : $resultScore | Mantap! kamu berhasil mendapat nilai yg bagus!';
    } else if (resultScore >= 75) {
      resultText = 'Score : $resultScore | Lumayan!';
    } else if (resultScore >= 60) {
      resultText = 'Score : $resultScore | Semangat! Kamu masih bisa coba lagi';
    } else {
      resultText = 'Score : $resultScore | Tolol!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      ),
    );
  }
}
