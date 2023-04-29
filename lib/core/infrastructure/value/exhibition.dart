import 'package:freezed_annotation/freezed_annotation.dart';

part 'exhibition.freezed.dart';
part 'exhibition.g.dart';

@freezed
class Exhibition with _$Exhibition {
  const factory Exhibition({
    required int id,
    required String name,
  }) = _Exhibition;

  factory Exhibition.fromJson(Map<String, dynamic> json) =>
      _$ExhibitionFromJson(json);
}
