import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  // const App({Key key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  var _questionIndex = 0;
  // var _buttonIndex = 0;
  var _questionBank = [
    // {
    //   'qBody': 'Welcome to the Quizz App!!',
    //   'buttonTextList': ['Start Quiz'],
    //   'userAnswer': null
    // },
    {
      'qBody': 'What is your favourite color?',
      'buttonTextList': ['Red', 'Blue', 'Green', 'Yellow'],
      'userAnswer': null
    },
    {
      'qBody': 'What is your favourite animal?',
      'buttonTextList': ['Cheetah', 'Cat', 'Dog', 'Lion'],
      'userAnswer': null
    },
    {
      'qBody': 'What is your favourite board game?',
      'buttonTextList': ['Carrom', 'Chess', 'Snake and Ladder'],
      'userAnswer': null
    },
    // {
    //   'qBody':
    //       'You have successfully completed the quiz. Click on the button below to view your score.',
    //   'buttonTextList': ['View Score'],
    //   'userAnswer': null
    // },
  ];
  void _answerQuestionHandler(int index) {
    // if (_questionIndex < _questionBank.length - 1) {
    setState(() {
      _questionBank[_questionIndex]['userAnswer'] =
          (_questionBank[_questionIndex]['buttonTextList'] as List)[index];
      print(_questionBank[_questionIndex]['userAnswer']);
      _questionIndex = _questionIndex + 1;
    });
    // }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Quizz App')),
        body: _questionIndex < _questionBank.length
            ? Quiz(
                questionBody: _questionBank[_questionIndex]['qBody'],
                buttonTextList: _questionBank[_questionIndex]['buttonTextList'],
                answerQuestionHandler: _answerQuestionHandler)
            : Result(),
      ),
    );
  }
}
