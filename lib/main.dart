import 'package:flutter/material.dart';
import 'package:audiofileplayer/audiofileplayer.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {


  void playSound(int noteNumber){
    Audio.load('assets/note$noteNumber.wav')..play()..dispose();
  }

  Expanded buildKey({required Color color,required int No}){
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(No);
        },
        style: TextButton.styleFrom(
          primary: Colors.white,
          backgroundColor: color,
        ),
        child: Icon(
          Icons.music_note,
          color: Colors.white,
          size: 40.0,
          semanticLabel: 'Text to announce in accessibility modes',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Center(
            child: Text(
              'XyloPhone App',

            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red , No: 1),
              buildKey(color: Colors.orange , No: 2),
              buildKey(color: Colors.yellow , No: 3),
              buildKey(color: Colors.green , No: 4),
              buildKey(color: Colors.blue , No: 5),
              buildKey(color: Colors.indigo , No: 6),
              buildKey(color: Colors.purple , No: 7),
            ],
          ),
        ),
      ),
    );
  }
}
