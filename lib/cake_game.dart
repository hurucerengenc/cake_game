import 'package:flame/game.dart';
import 'package:flame/components.dart';
import 'package:flutter/material.dart';

class CakeGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    // Ekrana geçici bir pembe zemin ekleyelim
    add(
      RectangleComponent(
        position: Vector2(0, 0),
        size: size, // Tüm ekranı kapla
        paint: Paint()..color = const Color(0xFFFFD1DC), // Pastel Pembe
      ),
    );

    // Merkeze bir test yazısı ekleyelim
    add(
      TextComponent(
        text: 'C&C Bakery Yuklendi!',
        position: size / 2,
        anchor: Anchor.center,
        textRenderer: TextPaint(
          style: const TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );

    print("Flame sistemi hatasız çalışıyor!");
  }
}
