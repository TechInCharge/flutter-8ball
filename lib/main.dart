import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MagicBall());

class MagicBall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[300],
        appBar: AppBar(
          title: Text('Ask Me Anything !'),
          backgroundColor: Colors.blue[700],
        ),
        body: MagicBallBody(),
      ),
    );
  }
}

class MagicBallBody extends StatefulWidget {
  @override
  _MagicBallBodyState createState() => _MagicBallBodyState();
}

class _MagicBallBodyState extends State<MagicBallBody> {
  int BallNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: (){
          setState(() {
            BallNumber = Random().nextInt(5)+1;
          });
        },
        child: Image.asset('images/ball$BallNumber.png'),
      ),
    );
  }
}
