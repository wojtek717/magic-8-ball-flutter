import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MagicBall());

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int answer = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue[800],
        ),
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: FlatButton(
                onPressed: (){
                  print('Clicked');
                  setState(() {
                    answer = Random().nextInt(5) + 1;
                  });
                },
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                child: Image(
                  image: AssetImage('images/ball$answer.png'),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
