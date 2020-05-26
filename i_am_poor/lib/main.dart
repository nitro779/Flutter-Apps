import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.redAccent.shade100,
        appBar: AppBar(
          title: Text("I AM POOR"),
          centerTitle: true,
          backgroundColor: Colors.deepOrange.shade800,
        ),
        body: Center(
            child: Container(
          child: Image(image: AssetImage('images/poor.png')),
        )),
      ),
    );
  }
}
