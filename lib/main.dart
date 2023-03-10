import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: BallPage(),
    ),
 );
class BallPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Ask me anything'),
          backgroundColor: Colors.blue.shade900,
        ),
        backgroundColor: Colors.blue,
        body:Ball(),
      );

  }
}


class Ball extends StatefulWidget {


  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(child: Image.asset('images/ball$ballNumber.png'),
      onPressed: (){
        setState((){
          ballNumber = Random().nextInt(5) +1 ;
          print('button is clicked = $ballNumber');
        });

      },)
    );
  }
}
