import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound (var index) {
    final player = AudioCache();
    player.play('note$index.wav');
  }
 var list_color = [
   Colors.red,
   Colors.orange,
   Colors.yellow,
   Colors.teal,
   Colors.blue,
   Colors.green,
   Colors.purple
 ];


  Expanded getTemplate (index) {
     return Expanded(
       child: FlatButton(
         onPressed: () {
           playSound(index);
         },
         color: list_color[index-1],
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
              getTemplate(1),
              getTemplate(2),
              getTemplate(3),
              getTemplate(4),
              getTemplate(5),
              getTemplate(6),
              getTemplate(7),
            ],
          ),
        ),
      ),
    );
  }
}
