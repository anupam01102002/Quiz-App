import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selecthandler;
  final String answerText;

  Answer(this.selecthandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        //color: Colors.blue,
        child: Text(answerText),
        onPressed: selecthandler,
      ),
    );
  }
}
