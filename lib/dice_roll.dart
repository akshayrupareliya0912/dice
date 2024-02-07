import 'dart:math';
import 'package:flutter/material.dart';

final Randomizer= Random();

class Diceroll extends StatefulWidget {
  const Diceroll({super.key});

  @override
  State<Diceroll> createState() => _DicerollState();
}

class _DicerollState extends State<Diceroll> {
  var Currentdice=2;

  void rollDice() {
    setState(() {
      Currentdice = Randomizer.nextInt(6) + 1;
    });
   // print('change image...');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/dice-$Currentdice.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.only(top: 20),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          onPressed: rollDice,
          child: Text("Roll Dice"),
        )
      ],
    );
  }
}
