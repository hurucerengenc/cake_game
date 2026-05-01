import 'package:flame/game.dart';
import 'package:flame/components.dart';

class CakeGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    await images.loadAll([
      'arkaplan.png',
      'pastatabagi.png',
      'kakaolukek.png',
      'keksade.png',
      'cileklikek.png',
      'un.png',
      'yumurta.png',
      'mikser.png',
    ]);

    // 🟣 ARKA PLAN
    add(
      SpriteComponent(
        sprite: Sprite(images.fromCache('arkaplan.png')),
        size: size,
        position: Vector2(0, 0),
      ),
    );

    // 🍽️ TABAK
    add(
      SpriteComponent(
        sprite: Sprite(images.fromCache('pastatabagi.png')),
        size: Vector2(250, 150),
        position: Vector2(size.x / 2, size.y * 0.65),
        anchor: Anchor.center,
      ),
    );

    // 🍫 KEK (şimdilik kakaolu gösteriyoruz)
    add(
      SpriteComponent(
        sprite: Sprite(images.fromCache('kakaolukek.png')),
        size: Vector2(220, 140),
        position: Vector2(size.x / 2, size.y * 0.52),
        anchor: Anchor.center,
      ),
    );

    // 🍞 UN
    add(
      SpriteComponent(
        sprite: Sprite(images.fromCache('un.png')),
        size: Vector2(80, 80),
        position: Vector2(70, size.y - 80),
        anchor: Anchor.center,
      ),
    );

    // 🥚 YUMURTA
    add(
      SpriteComponent(
        sprite: Sprite(images.fromCache('yumurta.png')),
        size: Vector2(80, 80),
        position: Vector2(160, size.y - 80),
        anchor: Anchor.center,
      ),
    );

    // 🌀 MİKSER
    add(
      SpriteComponent(
        sprite: Sprite(images.fromCache('mikser.png')),
        size: Vector2(100, 100),
        position: Vector2(270, size.y - 80),
        anchor: Anchor.center,
      ),
    );
  }
}
