import 'package:flutter/material.dart';
import 'package:flutter_implicit_animation_phase02/light_glow_effect.dart';

class OnLampGlowEffect extends StatelessWidget {
  const OnLampGlowEffect({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: LightGlowEffect(),
      child: Container(
        width: 550,
        height: 500,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.yellow.withOpacity(0.8),
              Colors.yellow.withOpacity(0.5),
              Colors.transparent,
            ],
          ),
        ),
      ),
    );
  }
}
