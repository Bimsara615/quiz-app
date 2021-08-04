import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function(int) questionChange;
  final int questionIndex;

  Quiz({
    required this.questionChange,
    required this.questionIndex,
    required this.questions,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'].toString(),
          // <comments>
          // questions[_questionIndex]['questionText']
          //     a            b              c
          // from the list a, the item at index b is selected and the 'questiontext' key at index b is displayed
          // toString() changes the object to string (why reqd?)
          // <comment>
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((testAnswer) {
          // <comments>
          //        q            w             e            r                t
          // from the list q, the item at index b is selected and the 'answers' key at index b is displayed
          // r notifies Dart that 'answers' key is a list of String as Dart can not understand it without r
          // t changes the list of maps(questions/answers) to a list of widgets
          // ['...' changes a nested list elements to individual list elements.
          // Here column is a list and inside it is also a list for from the 'answers' key.]
          // 'testAnswer' is a functi(questions[_questionIndex]['answers'] as List<String>).map((testAnswer)
          // on(anon method). map(testAnswer) gets the values from 'answers' key and then passes it to the Answer widget
          // <comments>
          return Answer(() => questionChange(testAnswer['score'] as int), testAnswer['text'].toString());
        }).toList()
      ],
    );
  }
}
