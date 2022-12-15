import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  // const Quiz({Key key}) : super(key: key);
  Quiz({
    @required this.questionBody,
    @required this.buttonTextList,
    @required this.answerQuestionHandler,
  });
  final String questionBody;
  final List buttonTextList;
  final Function answerQuestionHandler;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Question(
            questionBody,
          ),
          ...(buttonTextList).map((buttonText) {
            var index = buttonTextList.indexOf(buttonText);
            return Answer(
              onPressedHandler: () => answerQuestionHandler(index),
              buttonText: buttonText,
            );
          }).toList()
        ],
      ),
    );
  }
}
