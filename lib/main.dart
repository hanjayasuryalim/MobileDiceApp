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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade100,
    );
  }
}
