import 'package:digital_pamphlet/pamphlet/domain/booth_box.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_section.freezed.dart';
part 'map_section.g.dart';

@freezed
class MapSection with _$MapSection {
  const MapSection._();

  const factory MapSection({
    required int id,
    required String name,
    required List<double> block,
    required int level,
  }) = _MapSection;

  BoothBox get boothBox => BoothBox(
        left: block[1],
        top: block[0],
        width: block[3],
        height: block[2],
        text: name,
        level: level,
      );

  factory MapSection.fromJson(Map<String, dynamic> json) =>
      _$MapSectionFromJson(json);
}
