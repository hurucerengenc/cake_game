import 'package:flame/game.dart';
import 'package:flame/components.dart';

class CakeGame extends FlameGame {
  late SpriteComponent background;

  @override
  Future<void> onLoad() async {
    await images.loadAll([
      'arkaplan.png',
      'pastatabagi.png',
      'kakaolukek.png',
      'un.png',
      'yumurta.png',
      'mikser.png',
    ]);

    final centerX = size.x / 2;

    // 🟣 ARKA PLAN
    background = SpriteComponent(
      sprite: Sprite(images.fromCache('arkaplan.png')),
      size: size,
      position: Vector2.zero(),
    );
    add(background);

    // 🍽️ TABAK (ÖNCE EKLENİR → altta kalır)
    add(
      SpriteComponent(
        sprite: Sprite(images.fromCache('pastatabagi.png')),
        size: Vector2(320, 180),
        position: Vector2(centerX, size.y * 0.62),
        anchor: Anchor.center,
      ),
    );

    // 🍫 KEK (tabağın biraz üstünde)
    add(
      SpriteComponent(
        sprite: Sprite(images.fromCache('kakaolukek.png')),
        size: Vector2(300, 180),
        position: Vector2(centerX, size.y * 0.52),
        anchor: Anchor.center,
      ),
    );

    // 🍞 UN (SOLDA - büyük)
    add(
      SpriteComponent(
        sprite: Sprite(images.fromCache('un.png')),
        size: Vector2(150, 150),
        position: Vector2(120, size.y * 0.52),
        anchor: Anchor.center,
      ),
    );

    // 🥚 YUMURTA (unun yanında - büyük)
    add(
      SpriteComponent(
        sprite: Sprite(images.fromCache('yumurta.png')),
        size: Vector2(140, 140),
        position: Vector2(260, size.y * 0.52),
        anchor: Anchor.center,
      ),
    );

    // 🌀 MİKSER (SAĞDA - büyük)
    add(
      SpriteComponent(
        sprite: Sprite(images.fromCache('mikser.png')),
        size: Vector2(200, 200),
        position: Vector2(size.x - 150, size.y * 0.52),
        anchor: Anchor.center,
      ),
    );
  }

  @override
  void onGameResize(Vector2 canvasSize) {
    super.onGameResize(canvasSize);

    if (isLoaded) {
      background.size = canvasSize;
    }
  }
}