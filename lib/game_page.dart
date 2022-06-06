import 'package:flutter/material.dart';
import 'package:high_low_card_game/game_over.dart';
import 'card.dart';

// ignore: must_be_immutable
class GamePage extends StatefulWidget {
  List randomcard = CardStack().randomCard();
  List<String> cards;
  int score = 0;
  GamePage(this.cards, {super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  void evaluate(var c, var newcard) {
    if (c) {
      setState(() {
        widget.score += 1;
        widget.cards.insert(0, widget.randomcard[0]);
        widget.randomcard[0] = newcard[0];
        widget.randomcard[1] = newcard[1];
      });
    } else {
      GameOver(context, widget.score);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(child: Image.asset('assets/game_ui/bg.png')),
            Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.home,
                      size: 35,
                    ))),
            Align(
              alignment: const AlignmentDirectional(0, -0.55),
              //container for shown and hidden cards
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.transparent,
                    height: 300,
                    width: 175,
                    child: Image.asset(
                      'assets/game_ui/cover.png',
                      alignment: Alignment.center,
                    ),
                  ),
                  const SizedBox(width: 75),
                  Container(
                      color: Colors.transparent,
                      height: 250,
                      width: 150,
                      child: Image.asset(widget.randomcard[0]))
                ],
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0, 0.25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //container 1 for first guessed card
                  Container(
                      height: 150,
                      color: Colors.transparent,
                      child: widget.cards[0] == ''
                          ? Container(
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/game_ui/slot.png'))),
                            )
                          : Image.asset(widget.cards[0])),
                  //container 2 for second guessed card
                  Container(
                      height: 150,
                      color: Colors.transparent,
                      child: widget.cards[1] == ''
                          ? Container(
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/game_ui/slot.png'))),
                            )
                          : Image.asset(widget.cards[1])),
                  //container 3 for third guessed card
                  Container(
                      height: 150,
                      color: Colors.transparent,
                      child: widget.cards[2] == ''
                          ? Container(
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/game_ui/slot.png'))),
                            )
                          : Image.asset(widget.cards[2])),
                  //container 4 for fourth guessed card
                  Container(
                      height: 150,
                      color: Colors.transparent,
                      child: widget.cards[3] == ''
                          ? Container(
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/game_ui/slot.png'))),
                            )
                          : Image.asset(widget.cards[3])),
                  //container 5 for fifth guessed card
                  Container(
                      height: 150,
                      color: Colors.transparent,
                      child: widget.cards[4] == ''
                          ? Container(
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/game_ui/slot.png'))),
                            )
                          : Image.asset(widget.cards[4])),
                ],
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0, 0.75),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //low button
                  GestureDetector(
                    onTap: () {
                      List tempCard = CardStack().randomCard();
                      evaluate(tempCard[1] < widget.randomcard[1], tempCard);
                    },
                    child: Image.asset(
                      'assets/game_ui/low.png',
                      scale: 2.5,
                    ),
                  ),
                  //equal button
                  GestureDetector(
                    onTap: () {
                      List tempCard = CardStack().randomCard();
                      evaluate(tempCard[1] == widget.randomcard[1], tempCard);
                    },
                    child: Image.asset(
                      'assets/game_ui/equal.png',
                      scale: 2.5,
                    ),
                  ),
                  //high button
                  GestureDetector(
                    onTap: () {
                      List tempCard = CardStack().randomCard();
                      evaluate(tempCard[1] > widget.randomcard[1], tempCard);
                    },
                    child: Image.asset(
                      'assets/game_ui/high.png',
                      scale: 2.5,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0, -0.75),
              child: Text(
                'Score: ${widget.score}',
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
