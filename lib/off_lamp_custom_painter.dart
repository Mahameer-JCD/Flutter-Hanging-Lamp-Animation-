import 'dart:math';

import 'package:flutter/material.dart';

class CustomOffLamp extends CustomPainter {
  const CustomOffLamp();
  // Color lampHodeColor;

  // CustomLamp({this.lampHodeColor=Colors.grey.shade800})
  @override
  void paint(Canvas canvas, Size size) {
    final Size(:width, :height) = size;
    final radius = min(width / 2, height / 2);
    final lampRadius = radius * 0.65;
    final lampCableConnectorRadius = radius * 0.35;
    final bulbRadius = radius * 0.15;

    //Offset
    final lampHodePosition = Offset(width / 2, height * 0.40);
    final lampCableConnectorPosition = Offset(width / 2, height * 0.15);
    final lampFirstHangingRowStartingPoint = Offset(width / 2, height * 0.05);
    final lampFirstHangingRowEndingPOint = Offset(width / 2, -height * 0.45);
    final lampSecondHangignRowStartingPoint = Offset(
      width * 0.75,
      height * 0.35,
    );

    final lampSecondHangignRowEndingPoint = Offset(width * 0.75, height * 1.2);
    final buldPosition = Offset(width / 2, height * 0.43);

    //Paint
    Paint lampHolderPaint = Paint()..color = Colors.grey.shade800;
    Paint lampCableConnectorPaint = Paint()..color = Colors.grey.shade800;
    Paint lampHangingCablePaint =
        Paint()
          ..color = Colors.brown.shade400
          ..strokeWidth = 12.0;

    Paint lampHangingSecondCablePaint =
        Paint()
          ..color = Colors.brown.shade400
          ..strokeWidth = 4.0;

    Paint bulbPaint = Paint()..color = Colors.grey.shade500;
    //Draw Lamp Shape

    canvas.drawCircle(buldPosition, bulbRadius, bulbPaint);

    // canvas.drawLine(
    //   lampSecondHangignRowStartingPoint,
    //   lampSecondHangignRowEndingPoint,
    //   lampHangingSecondCablePaint,
    // );
    // canvas.drawArc(
    //   Rect.fromCircle(center: lampHodePosition, radius: lampRadius),
    //   0,
    //   -3.14,
    //   false,
    //   lampHolderPaint,
    // );

    // canvas.drawLine(
    //   lampFirstHangingRowStartingPoint,
    //   lampFirstHangingRowEndingPOint,
    //   lampHangingCablePaint,
    // );

    // canvas.drawArc(
    //   Rect.fromCircle(
    //     center: lampCableConnectorPosition,
    //     radius: lampCableConnectorRadius,
    //   ),
    //   0,
    //   -3.14,
    //   false,
    //   lampCableConnectorPaint,
    // );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
