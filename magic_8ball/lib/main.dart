import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(BallPage());
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade600,
        appBar: AppBar(
          title: Text("Ask Me Anything"),
          centerTitle: true,
          backgroundColor: Colors.blue.shade900,
        ),
        body: new Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ball_no = 1;
  String text = "";
  List<String> messages = [
    "Yes👍👍👍",
    "No😒😒😒😒",
    "Ask Again Later 😉😉😉",
    "The Answer is Yes 😎😎😎😎",
    "I Have No Idea! ¯\\_(ツ)_/¯",
  ];
  void changeAnswer() {
    setState(() {
      ball_no = Random().nextInt(5) + 1;
    });
  }

  void changeText() {
    setState(() {
      text = messages[ball_no - 1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Card(
            elevation: 5,
            color: Colors.blue,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
            child: Text(
              "$text",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(

            child: FlatButton(
              child: Image.asset('images/ball$ball_no.png'),
              onPressed: () {
                changeAnswer();
                changeText();
              },
            ),
          ),
        ],
      ),
    );
  }
}
