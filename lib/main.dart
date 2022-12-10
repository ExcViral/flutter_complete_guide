import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var questions = [
    'What\'s your favourite color?',
    'What\'s your favourite animal?'
  ];

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            Text(questions[questionIndex]),
            ElevatedButton(onPressed: answerQuestion, child: Text('Answer 1')),
            ElevatedButton(
                onPressed: () => print('Answer 2 Chosen'),
                child: Text('Answer 2')),
            ElevatedButton(
                onPressed: () {
                  print('Answer 3 Chosen');
                  print('It is a lovely day!');
                },
                child: Text('Answer 3')),
          ],
        ),
      ),
    );
  }
}


// Simple Stateful Widget Making Test
// void main() => runApp(NewApp());

// class NewApp extends StatefulWidget {
//   @override
//   State<NewApp> createState() => _NewAppState();
// }

// class _NewAppState extends State<NewApp> {
//   List textBank = ['First', 'Second', 'Third', 'Fourth', 'Fifth'];
//   var index = 0;
//   void nextClickHandler() {
//     setState(() {
//       if (index < textBank.length - 1) {
//         index = index + 1;
//       } else {
//         index = 0;
//       }
//     });
//   }

//   void previousClickHandler() {
//     setState(() {
//       if (index == 0) {
//         index = textBank.length - 1;
//       } else {
//         index = index - 1;
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('Stateful App Test')),
//         body: Column(
//           children: [
//             Text(textBank[index]),
//             Row(
//               children: [
//                 ElevatedButton(
//                   onPressed: previousClickHandler,
//                   child: Text('<< Previous'),
//                 ),
//                 ElevatedButton(
//                     onPressed: nextClickHandler, child: Text('Next >>'))
//               ],
//             ),
//             ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     var dummyText = 'dummy' + textBank.length.toString();
//                     textBank.add(dummyText);
//                   });
//                 },
//                 child: Text('Add New'))
//           ],
//         ),
//       ),
//     );
//   }
// }
