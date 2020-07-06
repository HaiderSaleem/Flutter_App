import 'package:flutter/material.dart';
import 'package:flutter_app/Album.dart';
import 'package:flutter_app/question.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

/*
void main() {
  runApp(Home());
}
*/

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState("HomePage");
  }
}

class HomeState extends State<Home> {
  final String pageTile;
  HomeState(this.pageTile);
  var questions = ['Question 1', 'Question 2'];
  var value = 0;
  List futureAlbum;

  void updateValue() {
    setState(() {
      value += 1;
    });
  }

  Future<String> getData() async {
    var response =
    await http.get('https://jsonplaceholder.typicode.com/albums/');
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      futureAlbum = (json.decode(response.body));
      updateValue();
      return "Success";
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
          body: new ListView.builder(
            itemCount: futureAlbum == null ? 0 :futureAlbum.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: Text(futureAlbum[index]["title"]),
              );
            },
          )),
    );
  }
}
