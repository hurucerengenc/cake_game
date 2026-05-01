import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'cake_game.dart'; // Dosya ismin cake_game.dart olduğu için böyle import etmelisin

void main() {
  runApp(GameWidget(game: CakeGame()));
}
