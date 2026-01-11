
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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/newbackground.png'),
              fit: BoxFit.cover,
            )
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

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
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(120, 60),
                    backgroundColor: Color(0xFF951F20),
                  ),
                    onPressed: (){
                    setState(() {
                      rollDice();
                    });
                    },
                    child: Text('Roll Dice',
                      style: TextStyle(fontSize: 32, color: Colors.white),
                      )
                )
              ]
          ),
        ),
      ),
    );
  }
}

