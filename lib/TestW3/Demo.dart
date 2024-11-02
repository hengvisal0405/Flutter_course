// ignore: file_names
import 'dart:math';
import 'package:flutter/material.dart';

const String diceImage1 = '/Users/notvalsy/Documents/CADT-Y3T1/mobile_development/flutter_app/assets/dice-2/dice-1.png';
const String diceImage2 = '/Users/notvalsy/Documents/CADT-Y3T1/mobile_development/flutter_app/assets/dice-2/dice-2.png';
const String diceImage3 = '/Users/notvalsy/Documents/CADT-Y3T1/mobile_development/flutter_app/assets/dice-2/dice-3.png';
const String diceImage4 = '/Users/notvalsy/Documents/CADT-Y3T1/mobile_development/flutter_app/assets/dice-2/dice-4.png';
const String diceImage5 = '/Users/notvalsy/Documents/CADT-Y3T1/mobile_development/flutter_app/assets/dice-2/dice-5.png';
const String diceImage6 = '/Users/notvalsy/Documents/CADT-Y3T1/mobile_development/flutter_app/assets/dice-2/dice-6.png';

String activeDiceImage = diceImage1;

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  // final Random _random = Random();

  void rollDice() {
    List<String> diceImages = [
      diceImage1,
      diceImage2,
      diceImage3,
      diceImage4,
      diceImage5,
      diceImage6,
    ];

    setState(() {
      activeDiceImage = diceImages[Random().nextInt(diceImages.length)];
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}

void main() => runApp(const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Center(child: DiceRoller()),
      ),
    ));