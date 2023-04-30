import 'package:digital_pamphlet/core/infrastructure/value/image_file.dart';
import 'package:digital_pamphlet/core/infrastructure/value/map_section.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exhibition_map.freezed.dart';
part 'exhibition_map.g.dart';

@freezed
class ExhibitionMap with _$ExhibitionMap {
  const factory ExhibitionMap({
    required int id,
    required String name,
    required List<MapSection> sections,
    required ImageFile image,
  }) = _ExhibitionMap;

  factory ExhibitionMap.fromJson(Map<String, dynamic> json) =>
      _$ExhibitionMapFromJson(json);
}
