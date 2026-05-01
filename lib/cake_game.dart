import 'package:flame/game.dart';
import 'package:flame/components.dart';
import 'package:flutter/material.dart';

// Bu sınıf oyunun beynidir.
class CakeGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    // Oyun başlarken yüklenecek görseller ve bileşenler buraya gelir.
    print("Oyun yüklendi!");

    // Ekranda bir şey görebilmek için basit bir yazı ekleyelim:
    add(
      TextComponent(
        text: 'Cake Game Başladı!',
        position: Vector2(100, 100),
        textRenderer: TextPaint(
          style: const TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }

  @override
  void update(double dt) {
    super.update(dt);
    // Zamanla değişen her şey (sürenin azalması gibi) burada hesaplanır.
  }
}
