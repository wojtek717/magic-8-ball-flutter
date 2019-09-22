import 'package:flutter/material.dart';

void main() => runApp(MagicBall());

class MagicBall extends StatelessWidget {
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
                },
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                child: Image(
                  image: AssetImage('images/ball1.png'),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
