import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer choosen!!');
  }

  @override
  Widget build(BuildContext context) {
    var question = ['what\'s your age', 'what\'s your name'];
    return MaterialApp(
      // home: Text('Hello!!!'),
      home: Scaffold(
        appBar: AppBar(
          title: Text('MY First App'),
        ),
        // body: Text("this is default text 3"),
        body: Column(
          children: [
            Text('The question'),
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
              onPressed: ()  {
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
