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
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 10.0,
              ),
              child: Image.asset('assets/dice1.png'),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 10.0,
                right: 20.0,
              ),
              child: Image.asset('assets/dice2.png'),
            ),
          ),
        ],
      ),
    );
  }
}

