import 'package:flutter/material.dart';
import 'package:quiz/results.dart';

import './quiz.dart';

void main() {
  runApp(MyApp());
}

// void main() => runapp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  final _questions = const [
    // static const questions =[] can also be used
    {
      'questionText': 'What is the capital city of Nepal?',
      'answers': [
        {'text': 'India', 'score': 0},
        {'text': 'Beijing', 'score': 0},
        {'text': 'Kathmandu', 'score': 10},
        {'text': 'Peru', 'score': 0},
      ],
    },
    {
      'questionText': 'What is my name?',
      'answers': [
        {'text': 'Bimsara', 'score': 10},
        {'text': 'Ram', 'score': 0},
        {'text': 'Shyam', 'score': 0},
        {'text': 'Hari', 'score': 0},
      ],
    },
    {
      'questionText': 'What is \'Animal Crossing\'?',
      'answers': [
        {'text': 'Game', 'score': 10},
        {'text': 'PC', 'score': 0},
        {'text': 'Furniture', 'score': 0},
        {'text': 'Place', 'score': 0},
      ],
    },
    {
      'questionText': 'What is apple?',
      'answers': [
        {'text': 'Vegetable', 'score': 0},
        {'text': 'Company', 'score': 10},
        {'text': 'Fruit', 'score': 10},
        {'text': 'Number', 'score': 0},
      ],
    },
    {
      'questionText': 'What do you think is the best \'Story-Driven\' game?',
      'answers': [
        {'text': 'Detroit: Become Human', 'score': 10},
        {'text': 'Life Is Strange', 'score': 10},
        {'text': 'GTA V', 'score': 0},
        {'text': 'Super Mario Bros', 'score': 0}
      ],
    },
    {
      'questionText': 'Which of these is NOT a reader app?',
      'answers': [
        {'text': 'AnyBooks', 'score': 0},
        {'text': 'NovelReader', 'score': 0},
        {'text': 'Tachiyomi', 'score': 0},
        {'text': 'Book Desk', 'score': 15},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _questionChange(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // creating a map (made using individual '{}') inside a list (made using '[]')

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Simple Quiz'),
      ),
      body: _questionIndex < _questions.length
          ? Quiz(
              questionChange: _questionChange,
              questionIndex: _questionIndex,
              questions: _questions,
            )
          // in the quiz function, LHS is properties of quiz.dart and RHS is properties of main.dart,
          : Results(_totalScore, _resetQuiz),
      )
    );
  }
}
