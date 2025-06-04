import 'package:flutter/material.dart';

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

class DicePage extends StatelessWidget {
  const DicePage({super.key});

  @override
  Widget build(BuildContext context) {

    var leftDiceNumber = 2;
    var righDiceNumber = 1;

    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: (){},
              child: Image.asset('assets/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: (null),
              child: Image.asset('assets/dice$righDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}

