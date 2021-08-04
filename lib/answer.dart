import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function() selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);  // constructor class 
  // to change questions on button press (by selectHandler) 
  // to display the answers to the questions on the button (by answerText)

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      // ignore: deprecated_member_use
      child: RaisedButton(
        color: Colors.amber,
        textColor: Colors.black,
        child: Text(answerText),
        onPressed: () => selectHandler(),
      ),
    );
  }
}
