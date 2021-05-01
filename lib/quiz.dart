import 'package:flutter/material.dart';
import 'package:flutter_app/answer.dart';
import 'package:flutter_app/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz({
    @required this.questions,
    @required this.questionIndex,
    @required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Text(questions[_questionIndex]),
        // Question(questions[_questionIndex]),
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
        // Answer(answerQuestion),
        // Answer(answerQuestion),
        // Answer(answerQuestion),
        // RaisedButton(
        //   child: Text('Answer 1'),
        //   onPressed: answerQuestion,
        // ),
        // RaisedButton(
        //   child: Text('Answer 2'),
        //   onPressed: () => print("Answer 2 choosen!!"),
        // ),
        // RaisedButton(
        //   child: Text('Answer 3'),
        //   onPressed: () {
        //     // ....
        //     print("Answer 3 choosen!!");
        //   },
        // ),
        // RaisedButton(
        //   child: Text('Answer 4'),
        //   onPressed: answerQuestion,
        // ),
      ],
    );
  }
}
