import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resultHandler;

  Result(this.resultScore, this.resultHandler);

  String get resultPhrase {
    var resultText = 'You Did It!';
    if (resultScore <= 20) {
      resultText = 'You are awesome!';
    } else if (resultScore == 30) {
      resultText = 'You are amazing!, You got a perfect score!';
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
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(child: Text('Restart Quiz!'), onPressed: resultHandler)
        ],
      ),
    );
  }
}
