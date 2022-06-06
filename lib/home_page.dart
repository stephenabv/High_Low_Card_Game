import 'package:flutter/material.dart';
import 'package:high_low_card_game/game_page.dart';
import 'package:high_low_card_game/hep_info.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> cards = ['', '', '', '', ''];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Positioned.fill(
                child: Container(
                  color: Colors.greenAccent,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 100),
                    Image.asset(
                      'assets/game_ui/logo.png',
                      scale: 2.5,
                    ),
                    const SizedBox(height: 75),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => GamePage(cards)));
                      },
                      child: Image.asset(
                        'assets/game_ui/play.png',
                        scale: 2,
                      ),
                    ),
                    const SizedBox(height: 35),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HelpInfo()));
                      },
                      child: Image.asset(
                        'assets/game_ui/help.png',
                        scale: 2,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
