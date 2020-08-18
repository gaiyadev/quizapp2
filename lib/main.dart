import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  void answerQuestion() {
    print('worked');
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      'this is one',
      'this is one',
      'this is one',
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter'),
      ),
      body: Column(
        children: [
          Text('the question'),
          RaisedButton(
            color: Colors.amberAccent,
            onPressed: () {
              answerQuestion();
            },
            child: Text('anser 1'),
          ),
          RaisedButton(
            color: Colors.blueAccent,
            onPressed: () {
              answerQuestion();
            },
            child: Text('anser 2'),
          ),
          RaisedButton(
            color: Colors.blueGrey,
            onPressed: answerQuestion,
            child: Text('anser 3'),
          ),
        ],
      ),
    );
  }
}
