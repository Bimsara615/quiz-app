import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);
  // constructor class to get the quiz questions from main.dart

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(18),
      child: Text(
        questionText, //gets the quiz question
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
        textAlign: TextAlign.center,
      ),
    );
  }
}
