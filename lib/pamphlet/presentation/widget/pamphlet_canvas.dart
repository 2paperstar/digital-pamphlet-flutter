import 'dart:math';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class PamphletCanvas extends StatelessWidget {
  final ui.Image image;
  final void Function(int?)? onSelectBooth;

  const PamphletCanvas({
    super.key,
    required this.image,
    this.onSelectBooth,
  });

  Rect _getContainedRect(Rect rect, Size size) {
    final ratio = min(size.width / image.width, size.height / image.height);
    final width = rect.width * ratio;
    final height = rect.height * ratio;
    final left = (size.width - image.width * ratio) / 2 + rect.left * ratio;
    final top = (size.height - image.height * ratio) / 2 + rect.top * ratio;
    return Rect.fromLTWH(left, top, width, height);
  }

  Offset _reverseContainedOffset(Offset offset, Size size) {
    final ratio = min(size.width / image.width, size.height / image.height);
    final left = (size.width - image.width * ratio) / 2;
    final top = (size.height - image.height * ratio) / 2;
    return Offset((offset.dx - left) / ratio, (offset.dy - top) / ratio);
  }

  @override
  Widget build(BuildContext context) {
    const originalBoxList = [
      Rect.fromLTWH(57, 147, 100, 144),
      Rect.fromLTWH(412, 147, 146, 144),
      Rect.fromLTWH(246, 291, 168, 60),
    ];
    return LayoutBuilder(builder: (context, constraints) {
      return GestureDetector(
        onTapUp: (details) {
          final offset = _reverseContainedOffset(
              details.localPosition, constraints.biggest);
          final index = originalBoxList.indexWhere(
            (box) => box.contains(offset),
          );
          final boothId = index == -1 ? null : index;
          onSelectBooth?.call(boothId);
        },
        child: CustomPaint(
          painter: _CustomPainter(
            image: image,
            boxList: originalBoxList
                .map(
                  (r) => _Box(
                    rect: _getContainedRect(r, constraints.biggest),
                    text: 'test',
                  ),
                )
                .toList(),
          ),
          child: Container(),
        ),
      );
    });
  }
}

class _Box {
  final Rect rect;
  final String text;

  _Box({required this.rect, required this.text});
}

class _CustomPainter extends CustomPainter {
  final ui.Image image;
  final List<_Box> boxList;

  _CustomPainter({required this.image, required this.boxList});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.red.withOpacity(0.2)
      ..strokeWidth = 1
      ..isAntiAlias = true;

    final imageRatio =
        min(size.width / image.width, size.height / image.height);
    canvas.drawImageRect(
      image,
      Rect.fromLTRB(0, 0, image.width.toDouble(), image.height.toDouble()),
      Rect.fromLTWH(
          (size.width - image.width * imageRatio) / 2,
          (size.height - image.height * imageRatio) / 2,
          image.width * imageRatio,
          image.height * imageRatio),
      Paint(),
    );
    for (var element in boxList) {
      canvas.drawRect(element.rect, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
