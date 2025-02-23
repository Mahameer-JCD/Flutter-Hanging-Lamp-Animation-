import 'package:flutter/material.dart';

class LightGlowEffect extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Size(:width, :height) = size;
    Path path = Path();
    path.moveTo(width / 2, 0);
    path.lineTo(width, height);
    path.lineTo(0, height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
