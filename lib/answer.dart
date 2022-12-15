import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // const Answer({Key key}) : super(key: key);
  Answer({@required this.onPressedHandler, @required this.buttonText});

  final Function onPressedHandler;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: onPressedHandler,
        child: Text(buttonText),
      ),
      width: double.infinity,
      margin: EdgeInsets.all(10.0),
    );
  }
}
