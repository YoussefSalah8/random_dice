
import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(RandomDice());
}

class RandomDice extends StatefulWidget {
   RandomDice({super.key});

  @override
  State<RandomDice> createState() => _RandomDiceState();
}

class _RandomDiceState extends State<RandomDice> {

  final List<String> diceImages = [
    'images/dice1.png',
    'images/dice2.png',
    'images/dice3.png',
    'images/dice4.png',
    'images/dice5.png',
    'images/dice6.png'
  ];

  int leftDiceNumber = 0;
  int rightDiceNumber = 0;

  void rollDice() {
    leftDiceNumber = Random().nextInt(diceImages.length);
    rightDiceNumber = Random().nextInt(diceImages.length);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: [
              Image.asset('images/diceeLogo.png'),

              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(diceImages[leftDiceNumber]),
                    Image.asset(diceImages[rightDiceNumber]),
                  ]
              ),
              ElevatedButton(
                onPressed: rollDice,
                child: Text('Roll Dice'),
              )

            ]
        ),
      ),
    );
  }
}

