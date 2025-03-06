import 'package:flutter/material.dart';
import 'dart:math' as math;

class BackgroundShapePainter extends CustomPainter {
  final Color color;

  BackgroundShapePainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final path = Path();

    // Recreating the SVG path in Flutter
    path.moveTo(14.989, 308.121);
    path.cubicTo(-2.026, 294.032, -4.398, 268.816, 9.691, 251.801);
    path.lineTo(205.617, 15.1879);
    path.cubicTo(219.706, -1.827, 244.922, -4.199, 261.937, 9.890);
    path.lineTo(538.116, 238.578);
    path.cubicTo(555.131, 252.667, 557.503, 277.882, 543.414, 294.898);
    path.lineTo(347.488, 531.511);
    path.cubicTo(333.398, 548.526, 308.183, 550.898, 291.168, 536.809);
    path.lineTo(14.989, 308.121);
    path.close();

    canvas.save();
    canvas.translate(size.width / 2, size.height / 2);
    canvas.rotate(-47.197 * math.pi / 180);
    canvas.translate(-size.width / 2, -size.height / 2);
    canvas.drawPath(path, paint);
    canvas.restore();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}