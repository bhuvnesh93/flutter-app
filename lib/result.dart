import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  //getter
  String get resultPhrase {
    String resultText;
    if (resultScore >= 8) {
      resultText = 'You are awesome';
    } else if (resultScore <= 12) {
      resultText = 'pritty likable';
    } else {
      resultText = 'you are so bad!!!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetHandler,
            textColor: Colors.blue,
            child: Text('Restart Quiz'),
          )
        ],
      ),
    );
  }
}
