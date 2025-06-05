import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue[200],
        appBar: AppBar(
          title: Center(
            child: Text(
                'DADOS',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
            ),
          ),
          backgroundColor: Colors.red,
          shadowColor: Colors.pink[700],
          elevation: 10,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  int randomNum = 1;

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: (){
                setState(() {
                  randomNum = Random().nextInt(6) + 1;
                  while (randomNum == leftDiceNumber) {
                    randomNum = Random().nextInt(6) + 1;
                  }
                  leftDiceNumber = randomNum;
                });
              },
              child: Image.asset('assets/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: (){
                setState(() {
                  randomNum = Random().nextInt(6) + 1;
                  while (randomNum == rightDiceNumber) {
                    randomNum = Random().nextInt(6) + 1;
                  }
                  rightDiceNumber = randomNum;
                });
              },
              child: Image.asset('assets/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}


