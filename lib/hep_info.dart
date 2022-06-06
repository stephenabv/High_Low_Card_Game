import 'package:flutter/material.dart';

class HelpInfo extends StatelessWidget {
  const HelpInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              color: Colors.greenAccent,
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.home,
                size: 45,
              ),
            ),
          ),
          const Align(
            alignment: AlignmentDirectional(0, -0.75),
            child: Text(
              'How To Play',
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'CountrySide'),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(35),
              child: Container(
                alignment: Alignment.center,
                child: const Text(
                  'A card is shown and the player has to guess if the next card is >, <, or = to the shown card. If the player guesses correctly, one point is gained. If the player guesses the game will end',
                  style: TextStyle(fontSize: 35),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
