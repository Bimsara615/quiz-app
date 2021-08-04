import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final int resultScore;
  final Function() resetQuizHandle;

  Results(this.resultScore, this.resetQuizHandle);

  String get resultPhrase {
    String resultText = 'Results';

    if (resultScore <= 20) {
      resultText = 'You got most of the answers incorrect.';
    } else if (resultScore <= 40) {
      resultText = 'You got a couple of answers correct.';
    } else if (resultScore <= 50) {
      resultText = 'You got most of the answers correct..';
    } else {
      resultText = 'Nice. You got all of the answers correct.';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(''),
          Text(''),
          Text(
            'You have completed the quiz.',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w800,
              color: Colors.black,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.wavy,
            ),
          ),
          Text(''),
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w800,
              color: Colors.red,
            ),
            textAlign: TextAlign.center,
          ),
          Text(''),
          FlatButton(
            onPressed: resetQuizHandle,
            child: Text('Restart Quiz!'),
            textColor: Colors.black,
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
