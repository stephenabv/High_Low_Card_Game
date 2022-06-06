import 'package:flutter/material.dart';
import 'package:high_low_card_game/home_page.dart';

void main(List<String> args) {
  runApp(const GameApp());
}

class GameApp extends StatelessWidget {
  const GameApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: HomePage()),
    );
  }
}
