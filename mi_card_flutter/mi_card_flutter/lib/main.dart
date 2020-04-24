import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/P_20191030_124152.jpg'),
            ),
            Text(
              "Aryatama",
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.white,
                fontFamily: 'Pacifico',
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Budak Cinta",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.teal[100],
                fontFamily: 'SourceSans',
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(Icons.phone, color: Colors.teal),
                title: Text('08098 9999',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'SurceSans',
                      fontSize: 20.0,
                    )),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                  leading: Icon(Icons.email, color: Colors.teal),
                  title: Text('Some_aone@lalala.com',
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'SurceSans',
                        fontSize: 20.0,
                      ))),
            )
          ],
        )),
      ),
    );
  }
}
