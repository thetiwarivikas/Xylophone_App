import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  void playButton(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({color, soundNumber}) {
    return Expanded(
      child: RaisedButton(
        color: color,
        onPressed: () {
          playButton(soundNumber);
        },
      ),
    );
    SizedBox(
      width: 10,
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(color: Colors.red, soundNumber: 1),
                buildKey(color: Colors.orange, soundNumber: 2),
                buildKey(color: Colors.yellow, soundNumber: 3),
                buildKey(color: Colors.green, soundNumber: 4),
                buildKey(color: Colors.blue, soundNumber: 5),
                buildKey(color: Colors.indigo[900], soundNumber: 6),
                buildKey(color: Colors.purple[900], soundNumber: 7),
                buildKey(color: Colors.pink, soundNumber: 8),
              ]),
        ),
      ),
    );
  }
}
