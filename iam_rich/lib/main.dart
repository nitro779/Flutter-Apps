import 'package:flutter/material.dart';

// main function is the starting point of all Flutter apps.
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blueGrey[400],
      appBar: AppBar(
        title: Text("I Am Rich"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Center(
        child: Image(
          image: AssetImage("assets/diamond.png"),
          height: 400,
          width: 400,
        ),
      ),
    ),
  ));
}
