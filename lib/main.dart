import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

var _questionindex = 0;
var _totalScore = 0;

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': 'Baby frog is known as',
      'answers': [
        {'text': 'Tadpole', 'score': 10},
        {'text': 'Tapddole', 'score': 0},
        {'text': 'Tadpolo', 'score': 0},
        {'text': 'Tadpol', 'score': 0},
      ],
    },
    {
      'questionText': 'How many consonants are there in the English alphabet?',
      'answers': [
        {'text': '18', 'score': 0},
        {'text': '23', 'score': 0},
        {'text': '21', 'score': 10},
        {'text': '19', 'score': 0},
      ],
    },
    {
      'questionText': 'What is the National Anthem of India?',
      'answers': [
        {'text': 'Jana Gana Mana', 'score': 10},
        {'text': '123', 'score': 0},
        {'text': 'qwe', 'score': 0},
        {'text': '456', 'score': 0},
      ],
    },
  ];
  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionindex = _questionindex + 1;
    });

    print(_questionindex);
    if (_questionindex < questions.length) {
      print('We have more Questons!');
    } else {
      print('No More Questions!');
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: _questionindex < questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionindex: _questionindex,
                questions: questions,
              )
            : Result(_totalScore),
      ),
    );
  }
}
