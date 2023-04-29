import 'dart:math';
import 'dart:ui' as ui;

import 'package:digital_pamphlet/pamphlet/domain/booth_box.dart';
import 'package:flutter/material.dart';

class PamphletCanvas extends StatelessWidget {
  final ui.Image image;
  final void Function(int?)? onSelectBooth;
  final List<BoothBox> boothBoxList;
  final int? selectedBoothIndex;

  const PamphletCanvas({
    super.key,
    required this.image,
    this.onSelectBooth,
    this.boothBoxList = const [],
    this.selectedBoothIndex,
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
    return LayoutBuilder(builder: (context, constraints) {
      return GestureDetector(
        onTapUp: (details) {
          final offset = _reverseContainedOffset(
              details.localPosition, constraints.biggest);
          final index = boothBoxList.indexWhere(
            (box) => box.rect.contains(offset),
          );
          final boothId = index == -1 ? null : index;
          onSelectBooth?.call(boothId);
        },
        child: CustomPaint(
          painter: _CustomPainter(
            image: image,
            selectedBoothIndex: selectedBoothIndex,
            boxList: boothBoxList
                .map(
                  (r) => _Box(
                    rect: _getContainedRect(r.rect, constraints.biggest),
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
  final int? selectedBoothIndex;

  _CustomPainter({
    required this.image,
    required this.boxList,
    this.selectedBoothIndex,
  });

  @override
  void paint(Canvas canvas, Size size) {
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
    for (final element in boxList.asMap().entries) {
      final fillPaint = Paint()
        ..style = PaintingStyle.fill
        ..color = element.key == selectedBoothIndex
            ? Colors.black.withOpacity(0.5)
            : Colors.red.withOpacity(0.2)
        ..isAntiAlias = true;
      final strokePaint = Paint()
        ..style = PaintingStyle.stroke
        ..color = Colors.red
        ..strokeWidth = 2
        ..isAntiAlias = true;
      canvas.drawRect(element.value.rect, fillPaint);
      canvas.drawRect(element.value.rect, strokePaint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
