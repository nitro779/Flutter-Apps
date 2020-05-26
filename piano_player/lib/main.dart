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
          title: Text("Piano"),
          centerTitle: true,
        ),
        body: PianoTiles(),
      ),
    );
  }
}

class PianoTiles extends StatefulWidget {
  @override
  _PianoTilesState createState() => _PianoTilesState();
}

class _PianoTilesState extends State<PianoTiles> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                final player = AudioCache(prefix: "songs");
                player.play("songs/note1.wav");
              },
              child: ListTile(
                leading: Icon(Icons.play_arrow),
                trailing: Text("Song1"),
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                final player = AudioCache(prefix: "songs");
                player.play("songs/note2.wav");
              },
              child: ListTile(
                leading: Icon(Icons.play_arrow),
                trailing: Text("Song2"),
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                final player = AudioCache(prefix: "songs");
                player.play("songs/note3.wav");
              },
              child: ListTile(
                leading: Icon(Icons.play_arrow),
                trailing: Text("Song3"),
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                final player = AudioCache(prefix: "songs");
                player.play("songs/note4.wav");
              },
              child: ListTile(
                leading: Icon(Icons.play_arrow),
                trailing: Text("Song4"),
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                final player = AudioCache(prefix: "songs");
                player.play("songs/note5.wav");
              },
              child: ListTile(
                leading: Icon(Icons.play_arrow),
                trailing: Text("Song5"),
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                final player = AudioCache(prefix: "songs");
                player.play("songs/note6.wav");
              },
              child: ListTile(
                leading: Icon(Icons.play_arrow),
                trailing: Text("Song6"),
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                final player = AudioCache(prefix: "songs");
                player.play("songs/note7.wav");
              },
              child: ListTile(
                leading: Icon(Icons.play_arrow),
                trailing: Text("Song7"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
