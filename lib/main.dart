import 'package:flutter/material.dart';
import 'package:flutter_app/quiz.dart';
import 'package:flutter_app/result.dart';

// void main() {
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
  var _totalScore = 0;
  final _questions = const [
    {
      'questionText': 'what\'s your age?',
      'answers': [
        {'text': '23', 'score': 1},
        {'text': '45', 'score': 2},
        {'text': '12', 'score': 3},
        {'text': '78', 'score': 4}
      ]
    },
    {
      'questionText': 'what\'s your favourite color?',
      'answers': [
        {'text': 'Red', 'score': 1},
        {'text': 'Green', 'score': 2},
        {'text': 'Blue', 'score': 3},
        {'text': 'Black', 'score': 4},
      ]
    }
  ];

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  void answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    // var questions = ['what\'s your age?', 'what\'s your name?'];
    // var questions = const [
    // const questions = [
    //   {
    //     'questionText': 'what\'s your age?',
    //     'answers': ['23', '45', '12', '78']
    //   },
    //   {
    //     'questionText': 'what\'s your favourite color?',
    //     'answers': ['Red', 'Green', 'Blue', 'Black']
    //   }
    // ];

    // var dummy = const ['Hello'];
    // dummy.add("Bhuvnesh");
    // print(dummy);
    // dummy = [];

    return MaterialApp(
      // home: Text('Hello!!!'),
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          // body: Text("this is default text 3"),
          body: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  questionIndex: _questionIndex,
                  answerQuestion: answerQuestion)
              : Result(_totalScore, _resetQuiz)
          // Column(
          //     children: [
          //       // Text(questions[_questionIndex]),
          //       // Question(questions[_questionIndex]),
          //       Question(questions[_questionIndex]['questionText']),
          //       ...(questions[_questionIndex]['answers'] as List<String>)
          //           .map((answer) {
          //         return Answer(answerQuestion, answer);
          //       }).toList()
          //       // Answer(answerQuestion),
          //       // Answer(answerQuestion),
          //       // Answer(answerQuestion),
          //       // RaisedButton(
          //       //   child: Text('Answer 1'),
          //       //   onPressed: answerQuestion,
          //       // ),
          //       // RaisedButton(
          //       //   child: Text('Answer 2'),
          //       //   onPressed: () => print("Answer 2 choosen!!"),
          //       // ),
          //       // RaisedButton(
          //       //   child: Text('Answer 3'),
          //       //   onPressed: () {
          //       //     // ....
          //       //     print("Answer 3 choosen!!");
          //       //   },
          //       // ),
          //       // RaisedButton(
          //       //   child: Text('Answer 4'),
          //       //   onPressed: answerQuestion,
          //       // ),
          //     ],
          //   )
          // : Center(
          //     child: Text('You did it.'),
          //   ),
          ),
    );
  }
}
