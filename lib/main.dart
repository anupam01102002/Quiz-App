import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer Chosen!');
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(children: [
          Text('The Question'),
          ElevatedButton(child: Text('Answer 1'), onPressed: answerQuestion),
          ElevatedButton(child: Text('Answer 2'), onPressed: answerQuestion),
          ElevatedButton(child: Text('Answer 3'), onPressed: answerQuestion),
        ]),
      ),
    );
  }
}
