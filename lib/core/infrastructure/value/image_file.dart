import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_file.freezed.dart';
part 'image_file.g.dart';

@freezed
class ImageFile with _$ImageFile {
  const factory ImageFile({
    required int id,
    required String path,
    required String name,
  }) = _ImageFile;

  factory ImageFile.fromJson(Map<String, dynamic> json) =>
      _$ImageFileFromJson(json);
}
