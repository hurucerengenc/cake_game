import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'cake_game.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const double mobileWidth = 390;
  static const double mobileHeight = 844;

  @override
  Widget build(BuildContext context) {
    final game = CakeGame();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: SizedBox(
            width: mobileWidth,
            height: mobileHeight,
            child: GameWidget(game: game),
          ),
        ),
      ),
    );
  }
}