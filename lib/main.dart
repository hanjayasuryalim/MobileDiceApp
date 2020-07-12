import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade900,
          title: Center(
            child: Text(
              'Rollin Dice App',
              style: TextStyle(
                fontFamily: 'IndieFlower',
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: DicePage()),
  ));
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNUmber = 1;
  int rightDiceNumber = 1;

  void changeLeft() {
    setState(() {
      leftDiceNUmber = Random().nextInt(6) + 1;
    });
  }

  void changeRight() {
    setState(() {
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black45,
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                  onPressed: () {
                    changeLeft();
                  },
                  child: Image.asset('images/dice$leftDiceNUmber.png')),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  changeRight();
                },
                child: Image.asset('images/dice$rightDiceNumber.png'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
