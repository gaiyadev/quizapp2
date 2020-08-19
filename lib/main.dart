import 'package:flutter/material.dart';
import 'questions.dart';
import 'answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _questionIndex = 0;
  var questions = [
    {
      "questionText": "what's your favorite color?",
      "anwers": ["black", "red", "green", "white"]
    },
    {
      "questionText": "what's your best meal?",
      "anwers": ["rice", "benas", "yam", "melo"]
    }
  ];

  void answerQuestion() {
    if (_questionIndex < questions.length - 1) {
      setState(() {
        _questionIndex++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter'),
      ),
      body: Column(
        children: [
          Question(questions[_questionIndex]['questionText']),
        ],
      ),
    );
  }
}
