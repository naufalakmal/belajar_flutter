import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText;
    if (resultScore >= 90) {
      resultText =
          'Score : $resultScore \n Mantap! kamu berhasil mendapat nilai yg bagus!';
    } else if (resultScore >= 75) {
      resultText = 'Score : $resultScore \n Lumayan!';
    } else if (resultScore >= 60) {
      resultText =
          'Score : $resultScore \n Semangat! Kamu masih bisa coba lagi';
    } else {
      resultText = 'Score : $resultScore \n Tolol!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz'),
            textColor: Colors.blue,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
