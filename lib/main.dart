import 'package:flutter/material.dart';
import 'package:flutter_app/question.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['what\'s your age?', 'what\'s your name?'];
    return MaterialApp(
      // home: Text('Hello!!!'),
      home: Scaffold(
        appBar: AppBar(
          title: Text('MY First App'),
        ),
        // body: Text("this is default text 3"),
        body: Column(
          children: [
            // Text(questions[_questionIndex]),
            Question(questions[_questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print("Answer 2 choosen!!"),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                // ....
                print("Answer 3 choosen!!");
              },
            ),
            RaisedButton(
              child: Text('Answer 4'),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
