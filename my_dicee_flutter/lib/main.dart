import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyDiceApp());
}

class MyDiceApp extends StatefulWidget {
  @override
  _MyDiceAppState createState() => _MyDiceAppState();
}

class _MyDiceAppState extends State<MyDiceApp> {
  @override
  int number1 = 1, number2 = 1;
  Random random = new Random(10);
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.redAccent.shade400,
        appBar: AppBar(
          title: Text("Dicee"),
          backgroundColor: Colors.red.shade900,
        ),
        body: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  child: Image.asset('images/dice$number1.png'),
                  onPressed: () {
                    left_dice_changer();
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  child: Image.asset('images/dice$number2.png'),
                  onPressed: () {
                    right_dice_changer();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  void left_dice_changer() {
    setState(() {
      number1 = random.nextInt(6) + 1;
    });
  }

  void right_dice_changer() {
    setState(() {
      number2 = random.nextInt(6) + 1;
    });
  }
}
