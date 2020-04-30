import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eight Ball',
      home: BallPage(),
    );
  }
}

class BallPage extends StatefulWidget {

  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int _random = Random().nextInt(5)+1;

  void _randomizeNumber() {
    setState(() {
      _random = Random().nextInt(5)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text('Ask Me Anything'),
      ),
      body: Center(
        child: FlatButton(
            onPressed: _randomizeNumber,
            child: Image.asset('images/ball${_random}.png')),
      ),
    );
  }
}
