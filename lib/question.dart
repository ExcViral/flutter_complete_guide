import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // const Question({Key key}) : super(key: key);
  Question(this.questionText);

  final String questionText;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
      width: double.infinity,
      margin: EdgeInsets.all(10),
    );
  }
}
