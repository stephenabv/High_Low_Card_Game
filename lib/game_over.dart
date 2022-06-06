import 'package:flutter/material.dart';
import 'package:high_low_card_game/home_page.dart';
import 'package:high_low_card_game/game_page.dart';

// ignore: non_constant_identifier_names
void GameOver(BuildContext context, int n) {
  List<String> cards = ['', '', '', '', ''];
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          alignment: Alignment.center,
          title: const Text(
            'Game Over',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 35, fontFamily: 'CountrySide'),
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()));
                    },
                    child: Image.asset('assets/game_ui/home.png',
                        scale: 10, alignment: Alignment.center)),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GamePage(cards)));
                    },
                    child: Image.asset('assets/game_ui/retry.png',
                        scale: 15, alignment: Alignment.center)),
              ],
            ),
          ],
          content:
              Text('Game Over! You scored: $n', textAlign: TextAlign.center),
        );
      });
}
