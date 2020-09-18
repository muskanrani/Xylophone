import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int soundnumber){
    final AudioCache player=AudioCache();
    player.play('note$soundnumber.wav');
  }
  Expanded buildkey({Color colorname, int notenumber}){
    return  Expanded(
      child: FlatButton(
        color: colorname,
        onPressed: () {
          playsound(notenumber);
        },
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
              buildkey(colorname: Colors.red,notenumber: 1),
              buildkey(colorname: Colors.orange,notenumber: 2),
              buildkey(colorname: Colors.yellow,notenumber: 3),
              buildkey(colorname: Colors.teal,notenumber: 4),
              buildkey(colorname: Colors.greenAccent,notenumber: 5),
              buildkey(colorname: Colors.lightBlue,notenumber: 6),
              buildkey(colorname: Colors.lightGreenAccent,notenumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
