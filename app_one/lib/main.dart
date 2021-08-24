import 'package:flutter/material.dart';

import './question.dart';

// void main(List<String> args) {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite colour?',
      'What\'s your favotite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first app"),
        ),
        body: Column(
          children: [
            Question(questions.elementAt(_questionIndex)),
            ElevatedButton(onPressed: _answerQuestion, child: Text('Answer 1')),
            ElevatedButton(
                onPressed: () => print('answer 2 chosen'),
                child: Text('Answer !r')),
            ElevatedButton(onPressed: _answerQuestion, child: Text('Answer 3')),
          ],
        ),
      ),
    );
  }
}
