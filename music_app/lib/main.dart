import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MusicPlayer());
}

class MusicPlayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("MyMusic"),
          centerTitle: true,
        ),
        body: PlayerHome(),
      ),
    );
  }
}

class PlayerHome extends StatefulWidget {
  @override
  _PlayerHomeState createState() => _PlayerHomeState();
}

class _PlayerHomeState extends State<PlayerHome> {
  void playSound(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Widget createButton({Color btnColor, int songNumber}) {
    return Expanded(
      child: FlatButton(
        color: btnColor,
        onPressed: () {
          playSound(songNumber);
        },
        child: ListTile(
          hoverColor: Colors.orange,
          title: Icon(
            CupertinoIcons.play_arrow,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        createButton(btnColor: Colors.red, songNumber: 1),
        createButton(btnColor: Colors.green, songNumber: 2),
        createButton(btnColor: Colors.blue, songNumber: 3),
        createButton(btnColor: Colors.amber, songNumber: 4),
        createButton(btnColor: Colors.pink, songNumber: 5),
        createButton(btnColor: Colors.purple, songNumber: 6),
        createButton(btnColor: Colors.teal, songNumber: 7),
      ],
    );
  }
}
