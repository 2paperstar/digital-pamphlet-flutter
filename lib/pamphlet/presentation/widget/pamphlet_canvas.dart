import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class PamphletCanvas extends StatelessWidget {
  final ui.Image image;

  const PamphletCanvas({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: CustomPaint(
        painter: _CustomPainter(image: image),
        child: Container(),
      ),
    );
  }
}

class _CustomPainter extends CustomPainter {
  final ui.Image image;

  _CustomPainter({required this.image});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..color = Colors.red
      ..strokeWidth = 1
      ..isAntiAlias = true;
    canvas.drawImageRect(
      image,
      Rect.fromLTRB(0, 0, image.width.toDouble(), image.height.toDouble()),
      Rect.fromLTRB(0, 0, size.width, size.height),
      paint,
    );
    canvas.drawRect(const Rect.fromLTWH(30, 30, 100, 100), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
