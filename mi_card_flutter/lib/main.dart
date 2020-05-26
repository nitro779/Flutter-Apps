import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.teal,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.blueGrey,
                  child: Image(image: AssetImage('images/naresh.png')),
                ),
                Text(
                  "Naresh",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontFamily: "Pacifico",
                      fontSize: 40),
                ),
                Text(
                  "STUDENT",
                  style: TextStyle(
                      color: Colors.pink[200],
                      fontFamily: "Source",
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      letterSpacing: 3.5),
                ),
                SizedBox(
                  height: 20,
                  width: 200,
                  child: Divider(
                    height: 1,
                    thickness: 2,
                    color: Colors.teal.shade300,
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      size: 20,
                      color: Colors.blue.shade300,
                    ),
                    title: Text("+91 9988776655",
                        style: TextStyle(
                            fontFamily: "Source",
                            color: Colors.teal.shade600,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            letterSpacing: 1.5)),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      size: 20,
                      color: Colors.blue.shade300,
                    ),
                    title: Text("naresh@gmail.com",
                        style: TextStyle(
                            color: Colors.teal.shade600,
                            fontFamily: "Source",
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            letterSpacing: 1.5)),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
