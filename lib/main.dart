import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:hassan_first_app/ui/quiz.dart';
import 'package:hassan_first_app/ui/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Blue', 'Purple', 'Green']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Cat', 'Dog', 'Elephant', 'Griraffe']
    },
    {
      'questionText': 'Who\'s your favorite instructor',
      'answers': ['Hassan', 'Ali', 'Mohamed', 'Ahmed']
    }
  ];

  var _questionIndex = 0;

  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
    });
  }

  void _questionAnswered() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);

    if (_questionIndex < _questions.length) {
      print('We have another question!');
    } else {
      print('No more questions');
    }
    
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MyFirstApp'),
          centerTitle: true,
          backgroundColor: Colors.grey,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _questionAnswered,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_resetQuiz),
      ),
    );
  }
}
