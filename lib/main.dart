import 'package:flutter/material.dart';
import 'package:flutter_app/question.dart';

void main() {
  runApp(Main());
}

class Main extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainState();
  }
}

class MainState extends State<Main> {
  var questions = ['Question 1', 'Question 2'];
  var value = 0;

  void updateValue() {
    setState(() {
      value += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter App"),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[value]),
            RaisedButton(
              child: Text('Click me'),
              onPressed: () => {print("Clicked $value")},
            )
          ],
        ),
      ),
    );
  }
}
