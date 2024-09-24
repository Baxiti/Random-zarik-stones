import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(DiceApp());
}

class DiceApp extends StatefulWidget {
  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int leftImageNumber = 1;  // Chap zar uchun
  int rightImageNumber = 1; // O'ng zar uchun

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink,
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text('Dicee'),
        ),
        body: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      leftImageNumber = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset('images/dice$leftImageNumber.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      rightImageNumber = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset('images/dice$rightImageNumber.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
