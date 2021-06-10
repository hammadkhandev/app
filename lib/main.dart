import 'package:first_app/quiz.dart';
import 'package:first_app/result.dart';
import 'package:flutter/material.dart';



//void main() {
// runApp(MyApp());}
void main() => runApp(
      MyApp(),
    );

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'what\'s your faveroid color',
      'answer': [
        {'Text': 'Red', 'score': 3},
        {'Text': 'Blue', 'score': 5},
        {'Text': 'white', 'score': 2},
        {'Text': 'Orange', 'score': 6},
      ],
    },
    {
      'questionText': 'what\'s your faveroid animal',
      'answer': [
        {'Text': 'Rabbit', 'score': 3},
        {'Text': 'Cow', 'score': 5},
        {'Text': 'Owl', 'score': 11},
        {'Text': 'Eagle', 'score': 3},
      ],
    },
    {
      'questionText': 'what\'s your favorite instractor',
      'answer': [
        {'Text': 'Max', 'score': 1},
        {'Text': 'Max', 'score': 1},
        {'Text': 'Max', 'score': 1},
        {'Text': 'Max', 'score': 1},
      ],
    },
  ];

  var _questionIndex = 1;

  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);

    if (_questionIndex < _questions.length) {
      print('we have more questions!');
    } else {
      print('No mare question');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: new Text('My First App'),
      ),
      body: _questionIndex < _questions.length
          ?Quiz(
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex,
              questions: _questions)
          : Result(_totalScore),
    ));
  }
}
