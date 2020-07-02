import 'package:flutter/material.dart';

void main()
{
  runApp(Main());
}

class Main extends StatelessWidget
{
  var questions = [
    'Question 1',
    'Question 2'
  ];
  @override
  Widget build(BuildContext context) {

    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text("Flutter App"),),
      body: Column(
        children: <Widget>[
          RaisedButton(child: Text('Click me'),
          onPressed: ()=>
            {
              print("Clicked 1")
            },),
          RaisedButton(child: Text('Click me'),
          onPressed: ()=>
            {
              print("Clicked 2")
            },)
        ],
      ),
    ),);
  }

}