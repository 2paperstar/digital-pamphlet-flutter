import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'booth_box.freezed.dart';

@freezed
class BoothBox with _$BoothBox {
  const BoothBox._();

  const factory BoothBox({
    required double left,
    required double top,
    required double width,
    required double height,
    required String text,
    required int level,
  }) = _BoothBox;

  Rect get rect => Rect.fromLTWH(left, top, width, height);
}
