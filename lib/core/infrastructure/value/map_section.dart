import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_section.freezed.dart';
part 'map_section.g.dart';

@freezed
class MapSection with _$MapSection {
  const factory MapSection({
    required int id,
    required String name,
    required List<int> block,
    required int level,
  }) = _MapSection;

  factory MapSection.fromJson(Map<String, dynamic> json) =>
      _$MapSectionFromJson(json);
}
