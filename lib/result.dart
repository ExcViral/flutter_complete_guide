import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // const Result({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Text(
        'You Did It!',
        style: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    ));
  }
}
