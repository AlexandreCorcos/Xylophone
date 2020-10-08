import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color colorNote, int soundNumber, String textMsg}) {
    return Expanded(
      child: FlatButton(
        splashColor: Colors.black,
        color: colorNote,
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text('$textMsg'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(
                  colorNote: Colors.red,
                  soundNumber: 1,
                  textMsg: 'test text 1'),
              buildKey(
                  colorNote: Colors.orange,
                  soundNumber: 2,
                  textMsg: 'test text 2'),
              buildKey(
                  colorNote: Colors.yellow,
                  soundNumber: 3,
                  textMsg: 'test text 3'),
              buildKey(
                  colorNote: Colors.green,
                  soundNumber: 4,
                  textMsg: 'test text 4'),
              buildKey(
                  colorNote: Colors.teal,
                  soundNumber: 5,
                  textMsg: 'test text 5'),
              buildKey(
                  colorNote: Colors.blue,
                  soundNumber: 6,
                  textMsg: 'test text 6'),
              buildKey(
                  colorNote: Colors.purple,
                  soundNumber: 7,
                  textMsg: 'test text 7'),
            ],
          ),
        ),
      ),
    );
  }
}
