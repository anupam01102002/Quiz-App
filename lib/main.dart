import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

var _questionindex = 0;

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  void _answerQuestion() {
    setState(() {
      _questionindex = _questionindex + 1;
    });

    print(_questionindex);
  }

  Widget build(BuildContext context) {
    var questions = [
    {
      'questionText': 'what\'s your favourite colour?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'what\'s your favourite animal?',
      'answers': ['Rabbit', 'Snake', 'Lion', 'Tiger'],
    },
    {
      'questionText': 'what\'s your favourite instructor?',
      'answers': ['Max', 'Min', 'Green', 'White'],
    },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(children: [
          Question(
            questions[_questionindex]['questionText'],
          ),
          Answer(_answerQuestion),
          Answer(_answerQuestion),
          Answer(_answerQuestion),
        ]),
      ),
    );
  }
}
